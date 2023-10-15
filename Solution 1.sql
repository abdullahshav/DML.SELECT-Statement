SELECT store.store_id, staff.first_name, staff.last_name, MAX(payment.amount) AS highest_revenue
FROM payment
JOIN staff ON payment.staff_id = staff.staff_id
JOIN store ON staff.store_id = store.store_id
WHERE payment.payment_date >= '2017-01-01' AND payment.payment_date <= '2017-12-31'
GROUP BY store.store_id, staff.first_name, staff.last_name
