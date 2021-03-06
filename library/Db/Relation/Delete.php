<?php

namespace Db\Relation;

use Core\Query;

class Delete extends Query
{

	protected $userId;
	protected $userId2;

	protected function build()
	{
		$query = '
			DELETE FROM
				relations
			WHERE
				user_id = ?
			AND	user_id2 = ?';

		$this->addBind($this->userId);
		$this->addBind($this->userId2);

		return $query;
	}

	/**
	 * @param mixed $userId
	 */
	public function setUserId($userId)
	{
		$this->userId = $userId;
	}

	/**
	 * @param mixed $userId2
	 */
	public function setUserId2($userId2)
	{
		$this->userId2 = $userId2;
	}

}