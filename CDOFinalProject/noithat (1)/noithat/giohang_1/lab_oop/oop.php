<?php
class DB_mySQL
{
	var $connection=NULL;
	var $result=NULL;
	function connec($host, $database, $user, $pass)
	{
		$this->connection= mysql_connect($host, $user, $pass);
		mysql_select_db($database, $this->connection);
		mysql_query("set names 'utf8'");	
	}
	function disconnect()
	{
		if(is_resource($this->connection))
		{
			if(is_resource($this->result))
			{
				mysql_close($this->connection);
			}
		}
	}
	function query($query)
	{
		if(is_resource($this->connection))
		{
			if(is_resource($this->result))
			{
				mysql_free_result($this->result);
			}
			$this->result=mysql_query($query, $this->connection);
		}
	}
	function fetchrow()
	{
		if(is_resource($this->result))
		{
			$row=mysql_fetch_assoc($this->result);
			if(is_array($row))
			{
				return $row;
				
			}
			else return false;
		}
	}
}
?>