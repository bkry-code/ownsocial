<?php

namespace Db\File;

use Core\Query;

class Store extends Query
{

	/** @var null|integer */
	protected $id;

	/** @var null|integer */
	protected $userId;

	/** @var null|integer */
	protected $groupId;

	/** @var string */
	protected $content;

	/** @var string */
	protected $name;

	/** @var string */
	protected $type;

	/** @var integer */
	protected $created;

	protected function build()
	{
		$query = '
			INSERT INTO
				files
				(
					id,
					user_id,
					group_id,
					content,
					name,
					type,
					created
				)
			VALUES
				(
					?,
					?,
					?,
					?,
					?,
					?,
					?
				)
			ON DUPLICATE KEY UPDATE
				content = VALUES(content),
				name = VALUES(name),
				type = VALUES(type)';

		$this->addBind($this->id);
		$this->addBind($this->userId);
		$this->addBind($this->groupId);
		$this->addBind($this->content);
		$this->addBind($this->name);
		$this->addBind($this->type);
		$this->addBind($this->created);

		return $query;
	}

	/**
	 * @param mixed $id
	 */
	public function setId($id)
	{
		$this->id = $id;
	}

	/**
	 * @param string $content
	 */
	public function setContent($content)
	{
		$this->content = $content;
	}

	/**
	 * @param integer $created
	 */
	public function setCreated($created)
	{
		$this->created = $created;
	}

	/**
	 * @param string $type
	 */
	public function setType($type)
	{
		$this->type = $type;
	}

	/**
	 * @param int|null $userId
	 */
	public function setUserId($userId)
	{
		$this->userId = $userId;
	}

	/**
	 * @param int|null $groupId
	 */
	public function setGroupId($groupId)
	{
		$this->groupId = $groupId;
	}

	/**
	 * @param string $name
	 */
	public function setName($name)
	{
		$this->name = $name;
	}

}