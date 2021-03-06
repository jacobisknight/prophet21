/**
Shows you the number of users in each active
P21 role.  
*/

USE P21Play
GO

SELECT
	r.role_uid
	,r.role
	,COUNT(u.id) as num_members
FROM
	roles r
	 LEFT JOIN users u on r.role_uid = u.role_uid
WHERE
	r.delete_flag = 'N'
	and u.delete_flag = 'N'

GROUP BY
	r.role, r.role_uid

Order by 
	r.role