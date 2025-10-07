
-- ================================================
-- SAMPLE DATA POPULATION SCRIPT
-- ================================================

-- =======================
-- USERS
-- =======================
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('b1a7e3d1-0001', 'Alice', 'Johnson', 'alice@example.com', 'hash_pw_1', '+2348011111111', 'host'),
  ('b1a7e3d1-0002', 'Bob', 'Smith', 'bob@example.com', 'hash_pw_2', '+2348022222222', 'guest'),
  ('b1a7e3d1-0003', 'Carol', 'Williams', 'carol@example.com', 'hash_pw_3', '+2348033333333', 'guest'),
  ('b1a7e3d1-0004', 'David', 'Olawale', 'david@example.com', 'hash_pw_4', '+2348044444444', 'host'),
  ('b1a7e3d1-0005', 'Evelyn', 'Brown', 'evelyn@example.com', 'hash_pw_5', '+2348055555555', 'guest'),
  ('b1a7e3d1-0006', 'Frank', 'Adeyemi', 'frank@example.com', 'hash_pw_6', '+2348066666666', 'host'),
  ('b1a7e3d1-0007', 'Grace', 'Ogunleye', 'grace@example.com', 'hash_pw_7', '+2348077777777', 'guest'),
  ('b1a7e3d1-0008', 'Henry', 'Nwosu', 'henry@example.com', 'hash_pw_8', '+2348088888888', 'guest'),
  ('b1a7e3d1-0009', 'Ifeoma', 'Okafor', 'ifeoma@example.com', 'hash_pw_9', '+2348099999999', 'host'),
  ('b1a7e3d1-0010', 'James', 'Udo', 'james@example.com', 'hash_pw_10', '+2348101010101', 'guest');

-- =======================
-- PROPERTY
-- =======================
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES
  ('prop-001', 'b1a7e3d1-0001', 'Lekki Ocean Apartment', 'Furnished 2-bedroom apartment near Elegushi beach.', 'Lagos', 25000.00),
  ('prop-002', 'b1a7e3d1-0001', 'Abuja Studio Flat', 'Compact studio with fast WiFi near Maitama.', 'Abuja', 18000.00),
  ('prop-003', 'b1a7e3d1-0004', 'Beachside Villa', 'Luxury villa with pool and sea view.', 'Port Harcourt', 40000.00),
  ('prop-004', 'b1a7e3d1-0004', 'Garden Duplex', 'Peaceful duplex with private parking and garden.', 'Benin City', 22000.00),
  ('prop-005', 'b1a7e3d1-0006', 'Ikeja Shortlet', 'Comfortable apartment near MM airport.', 'Lagos', 20000.00),
  ('prop-006', 'b1a7e3d1-0006', 'Enugu Hillside Bungalow', 'Cool bungalow with mountain view.', 'Enugu', 15000.00),
  ('prop-007', 'b1a7e3d1-0009', 'Owerri Downtown Loft', 'Modern loft close to city center.', 'Owerri', 17000.00),
  ('prop-008', 'b1a7e3d1-0009', 'Aba Guest House', 'Budget-friendly guesthouse in Aba.', 'Aba', 10000.00),
  ('prop-009', 'b1a7e3d1-0001', 'Victoria Island Condo', 'Elegant condo with 24/7 power and ocean breeze.', 'Lagos', 35000.00),
  ('prop-010', 'b1a7e3d1-0004', 'Riverside Cottage', 'Quiet cottage by the riverbank, ideal for retreats.', 'Calabar', 18000.00);

-- =======================
-- BOOKING
-- =======================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('book-001', 'prop-001', 'b1a7e3d1-0002', '2025-07-01', '2025-07-05', 100000.00, 'confirmed'),
  ('book-002', 'prop-002', 'b1a7e3d1-0003', '2025-08-10', '2025-08-15', 90000.00, 'pending'),
  ('book-003', 'prop-003', 'b1a7e3d1-0005', '2025-09-01', '2025-09-04', 120000.00, 'confirmed'),
  ('book-004', 'prop-004', 'b1a7e3d1-0007', '2025-10-10', '2025-10-12', 44000.00, 'canceled'),
  ('book-005', 'prop-005', 'b1a7e3d1-0008', '2025-08-20', '2025-08-25', 100000.00, 'confirmed'),
  ('book-006', 'prop-006', 'b1a7e3d1-0010', '2025-07-15', '2025-07-18', 45000.00, 'confirmed'),
  ('book-007', 'prop-007', 'b1a7e3d1-0002', '2025-09-05', '2025-09-08', 51000.00, 'pending'),
  ('book-008', 'prop-008', 'b1a7e3d1-0003', '2025-06-01', '2025-06-03', 20000.00, 'confirmed'),
  ('book-009', 'prop-009', 'b1a7e3d1-0007', '2025-07-10', '2025-07-14', 140000.00, 'confirmed'),
  ('book-010', 'prop-010', 'b1a7e3d1-0005', '2025-08-11', '2025-08-14', 54000.00, 'confirmed');

-- =======================
-- PAYMENT
-- =======================
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay-001', 'book-001', 100000.00, 'credit_card'),
  ('pay-002', 'book-003', 120000.00, 'bank_transfer'),
  ('pay-003', 'book-005', 100000.00, 'paypal'),
  ('pay-004', 'book-006', 45000.00, 'credit_card'),
  ('pay-005', 'book-008', 20000.00, 'bank_transfer'),
  ('pay-006', 'book-009', 140000.00, 'credit_card'),
  ('pay-007', 'book-010', 54000.00, 'cash');

-- =======================
-- REVIEW
-- =======================
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev-001', 'prop-001', 'b1a7e3d1-0002', 5, 'Amazing location and clean apartment!'),
  ('rev-002', 'prop-003', 'b1a7e3d1-0005', 4, 'Loved the view, but Wi-Fi was slow.'),
  ('rev-003', 'prop-005', 'b1a7e3d1-0008', 5, 'Super close to the airport, great host.'),
  ('rev-004', 'prop-006', 'b1a7e3d1-0010', 3, 'Nice view but limited amenities.'),
  ('rev-005', 'prop-009', 'b1a7e3d1-0007', 5, 'Luxury at its finest! Totally worth it.'),
  ('rev-006', 'prop-004', 'b1a7e3d1-0007', 4, 'Quiet and cozy, ideal for weekend.'),
  ('rev-007', 'prop-008', 'b1a7e3d1-0003', 4, 'Affordable and tidy. Great value.'),
  ('rev-008', 'prop-002', 'b1a7e3d1-0003', 5, 'Comfortable and stylish interior.'),
  ('rev-009', 'prop-007', 'b1a7e3d1-0002', 4, 'Nice loft, close to nightlife.'),
  ('rev-010', 'prop-010', 'b1a7e3d1-0005', 5, 'Peaceful environment and good price.');

-- =======================
-- MESSAGE
-- =======================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('msg-001', 'b1a7e3d1-0002', 'b1a7e3d1-0001', 'Hi Alice, is the Lekki Apartment available for next week?'),
  ('msg-002', 'b1a7e3d1-0001', 'b1a7e3d1-0002', 'Yes Bob, it’s available. You can proceed to book.'),
  ('msg-003', 'b1a7e3d1-0005', 'b1a7e3d1-0004', 'Hi David, can you offer a discount for the villa?'),
  ('msg-004', 'b1a7e3d1-0004', 'b1a7e3d1-0005', 'Sure Evelyn, I’ll reduce by 10%.'),
  ('msg-005', 'b1a7e3d1-0008', 'b1a7e3d1-0006', 'Frank, does the Ikeja Shortlet include breakfast?'),
  ('msg-006', 'b1a7e3d1-0006', 'b1a7e3d1-0008', 'Hi Henry, breakfast is optional at ₦3,000/day.'),
  ('msg-007', 'b1a7e3d1-0007', 'b1a7e3d1-0001', 'Alice, can I extend my booking by one day?'),
  ('msg-008', 'b1a7e3d1-0001', 'b1a7e3d1-0007', 'Yes, that’s possible. Please update your reservation.'),
  ('msg-009', 'b1a7e3d1-0010', 'b1a7e3d1-0009', 'Ifeoma, is the Owerri Loft available this weekend?'),
  ('msg-010', 'b1a7e3d1-0009', 'b1a7e3d1-0010', 'Yes James, you can book it through the site.');
