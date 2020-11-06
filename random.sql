SELECT user_email as 'Email'
FROM users as u
JOIN ads as a ON a.users_id = u.id
WHERE a.title = #GIVEN AD title;