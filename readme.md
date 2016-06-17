Rent a car
----------

> An online booking application which allows customers to make an online request to rent a car. 

**Static Pages**
- contact `contact.jsp`
- about `about.jsp`
- privacy `privacy.jsp`

**User**
 - user registration `register.jsp` 
 - login `login.jsp`  **DONE**
	- Correct login `welcome.jsp` **DONE**
	- Incorrect login `error-login.jsp` **DONE**
 - view cars `view-cars.jsp` **DONE**
 	- book car `book-now.jsp` **DONE**
 		- book `book.jsp` **DONE**
 - Profile 
 	- view profile `view-profile.jsp`
 	- edit profile `edit-profile.jsp` 
 		- change pwd `change-password.jsp` 
 	- logout `logout.jsp` **DONE**
- forgot password `forgot.jsp` 
 
**Customer**
- Enquiry `enquiry.jsp`
- Feedback `feedback.jsp`

**Admin**
- User accounts
	- Enable disable accounts `view-user-accounts.jsp` **DONE**
		- Activate `activate.jsp` **DONE**
		- Deactivate `deactivate.jsp` **DONE**
	- Maintain customer info 
		- Show all customers `maintain-customer-info.jsp` **DONE**
		- Modify customer info `update-customer.jsp`
		- Modification done `modified-customer.jsp`
- Car Information
	- Add new car `add-car.jsp` **DONE**
		- Upload file and insert data `AddCarProcess.java` Servlet **DONE**
		- Car added `car-added.jsp` **DONE**
	- Modify car 
		- Show all cars `modify-car-select.jsp` **DONE**
		- Modify car info `modify-car.jsp` **DONE**
		- Update car info `ModifyCarProcess.jsp` **DONE**
		- Modification done `car-modified.jsp` **DONE**
	- Remove car `remove-car.jsp` **DONE**
		- Show all cars
		- Select car to remove (RECURSIVE)
- Rental request `rental-requests.jsp` **DONE**
	- Approve `approve.jsp` **DONE**
	- Decline `decline.jsp` **DONE**
- Reports
	- Available cars `available-cars.jsp` **DONE**
	- Rented cars `rented-cars.jsp` **DONE**
	- List of Registered users `registered-users.jsp` **DONE**
- Feedbacks
	-  View enquiries `view-enquiries.jsp` **DONE**
	-  ~~Reply enquiries `reply-enquiries.jsp`~~
	-  View feedbacks `view-feedbacks.jsp` **DONE**

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
- `type` Feedback / Enquiry
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


