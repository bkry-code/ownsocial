<?php

namespace Core;

use Core\Controller\Request;
use Core\Controller\Response;
use Core\View;
use Model\User as UserModel;
use Service\User;
use Service\Config;

class Controller
{

	/** @var Request */
	protected $_request;

	/** @var Response */
	protected $_response;

	/** @var View */
	protected $_view;

	/** @var bool */
	protected $_disableLayout = false;

	/** @var bool */
	protected $_disableRender = false;

	/** @var UserModel */
	protected $_currentUser;

	/** @var array */
	protected $_config;

	/** @var Translator */
	protected $_translator;

	public function __construct(Request $request, Response $response, View $view, Translator $translator)
	{
		$this->_request = $request;
		$this->_response = $response;
		$this->_view = $view;
		$this->_currentUser = User::getCurrent();
		$this->_config = Config::getAll();
		$this->_translator = $translator;
	}

	public function init() {}

	protected function getRequest()
	{
		return $this->_request;
	}

	protected function getResponse()
	{
		return $this->_response;
	}

	public function dispatch($method)
	{
		if (!$this->_currentUser && $this->_request->getController() !== 'index' && $this->_request->getAction() !== 'login' && $this->_request->getController() !== 'register') {

			$this->redirect('/index/login/');
			return;
		}

		$this->init();

		$this->$method();

		if (!$this->_disableRender) {
			$this->_response->setOuput($this->_view->_render($this->_disableLayout));
		}
	}

	public function json($data)
	{
		$this->_disableRender = true;
		$this->_response->setOuput(json_encode($data));
	}

	public function file($type, $content, $filename = null)
	{
		$this->_disableRender = true;
		header('Content-Type: ' . $type);

		if ($filename !== null) {
			header('Content-Disposition: attachment; filename="' . $filename . '"');
		}

		$this->_response->setOuput($content);
	}

	public function image($type, $content)
	{
		$this->_disableRender = true;

		header('Pragma: public');
		header('Cache-Control: max-age=86400');
		header('Expires: '. gmdate('D, d M Y H:i:s \G\M\T', time() + 86400));
		header('Content-Type: ' . $type);

		$this->_response->setOuput($content);
	}

	public function redirect($url)
	{
		header('Location: ' . $url);
		exit();
	}

	/**
	 * @return Translator
	 */
	public function getTranslator()
	{
		return $this->_translator;
	}

}