Rent a car
----------

> An online booking application which allows customers to make an online request to rent a car. 

**User**
 - user registration `register.jsp` 
 - login `login.jsp` 
	- Correct login `welcome.jsp` 
	- Incorrect login `error-login.jsp` 
 - view cars `view-cars.jsp` 
 - edit info `update-profile.jsp` 
 - change pwd `change-password.jsp` 
 - forgot password `forgot.jsp` 
 - logout `logout.jsp`

**Customer**
- Rent a car `rent-car.jsp`
- Enquiry `enquiry.jsp`
- Feedback `feedback.jsp`

**Admin**
- Enable disable accounts `maintain-user-accounts.jsp`
- Maintain customer info `update-customer-info.jsp`
- Add new car `add-car.jsp`
- Modify car `edit-car.jsp`
	- Show all cars
	- Select car to remove
- Remove car `remove-car.jsp`
	- Show all cars
	- Select car to remove
- Rental request `rental-requests.jsp`
	- Approve `approve.jsp`
	- Decline `decline.jsp
- Reports `reports.jsp`
	- Available cars `available-cars.jsp` 
	- Rented cars `rented-cars.jsp`
	- List of Registered users `registered-users.jsp`
- Feebacks
	-  View enquiries `view-enquiries.jsp`
	-  Reply enquiries `reply-enquiries.jsp`
	-  View feedbacks `view-feedbacks.jsp`

Database
----------

**Car**
- `regNo`
- `carType`
- `carImage`
- `description`
- `rentalPrice`
- `active` Active / In-Active

**Customer**
- `cid`
- `totalAmount`
- `payDate`
- `userId`

**Enquiry**
- `enquiryId`
- `userId`
- `type`
- `message`
- `status` Pending / Replied / Resolved

**RentalRequest**
- `requestId`
- `userId`
- `regNo`
- `dateRequested`
- `dateFrom`
- `dateTo`
- `status` Accepted / Declined / Pending
- `message`

**Staff**
- `staffId`
- `staffType` Admin / Staff
- `userId`

**User**
- `userId`
- `name`
- `email`
- `address`
- `city`
- `phone`
- `pwd`
- `active` Active / In-Active

Working Directory
/Users/amolwankhede/Documents/Ntec/Java-Project/RentACar
