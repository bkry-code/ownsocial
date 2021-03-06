<?php

namespace Application\Controller;

use Core\Controller;
use Service\Relation as RelationService;
use Service\User;
use Model\Relation as RelationModel;

class Relation extends Controller
{

	public function createRequestAction()
	{
		$user = $this->_currentUser;
		$relUserId = $this->getRequest()->getPost('user');
		$relUser = User::getById($relUserId);

		$relation = new RelationModel();
		$relation->setUserId($user->getId());
		$relation->setUserId2($relUserId);
		$relation->setCreated(time());
		$relation->setConfirmed(null);

		RelationService::store($relation);
		User::sendNewContactRequestMail($this->getTranslator(), $this->getRequest(), $user, $relUser);

		$this->json(true);
	}

	public function acceptRequestAction()
	{
		$user = User::getCurrent();
		$relUserId = $this->getRequest()->getPost('user');
		$relUser = User::getById($relUserId);

		$relation = RelationService::getByUsers($relUserId, $user->getId());
		$relation->setConfirmed(time());

		RelationService::store($relation);
		User::sendContactRequestAcceptedMail($this->getTranslator(), $this->getRequest(), $user, $relUser);

		$this->json(true);
	}

	public function declineRequestAction()
	{
		$user = User::getCurrent();
		$relUserId = $this->getRequest()->getPost('user');

		$relation = RelationService::getByUsers($relUserId, $user->getId());
		RelationService::delete($relation);

		$this->json(true);
	}

}