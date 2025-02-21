-- Get the top 5 beans that generated the most payments
CALL GetTopEarningBeans(5); --Need testing

-- Calculate the total number of hits performed per bean
CALL GetHitCountPerBean();

-- Find the Most Used Purchased Weapon in Successful Hits
CALL GetMostUsedWeapon();

-- Top 5 beans with the Most Specializations
CALL GetTopSpecializedBeans(5);

-- Get Most Profitable Organization
CALL GetTopEarningOrganization(); --Need testing

-- Get Top 3 Clients with the Most Contracts
CALL GetTopClients(3);

-- Monthly Revenue Report
CALL MonthlyHitRevenue('Completed');
CALL MonthlyHitRevenue('Pending');

-- Get Outstanding Client Payments
CALL OutstandingPayments('angela72');

-- Get Beans under org contract
CALL BeansUnderContract('Anbu Black Ops');

-- Bean Info
CALL BeanHitInfo('qcraig', 'Active');
CALL BeanSpecInfo('qcraig');