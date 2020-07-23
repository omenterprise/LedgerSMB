begin;
-- Australia chart of accounts
-- sample only
--
SELECT account_heading_save(NULL, '10000', 'ASSETS', NULL);
SELECT account_heading_save(NULL, '11000', 'BANK AND CASH ACCOUNTS', NULL);
SELECT account__save(NULL,'11010','Bank Account','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL,'11020','Petty Cash','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL,'11110','PayPal','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT account__save(NULL,'11120','Bitcoin','A','', NULL, false, false, string_to_array('AR_paid:AP_paid', ':'), false, false);
SELECT cr_coa_to_account_save(accno, accno || '--' || description)
FROM account WHERE accno in ('11010', '11020','11110', '11120');

SELECT account_heading_save(NULL, '12000', 'CUSTOMERS AND SETTLEMENT ACCOUNTS', NULL);
SELECT account__save(NULL,'12100','Accounts Receivables','A','', NULL, false, false, string_to_array('AR', ':'), false, false);
SELECT account_heading_save(NULL, '13000', 'OTHER CURRENT ASSETS', NULL);
SELECT account__save(NULL,'13100','Allowance for doubtful accounts','A','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account_heading_save(NULL, '15000', 'INVENTORY ASSETS', NULL);
SELECT account__save(NULL,'15100','Inventory / Locks','A','', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL,'15200','Inventory / Computers','A','', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL,'15300','Inventory / Electronics','A','', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL,'15400','Inventory / Software','A','', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL,'15800','Inventory / Misc','A','', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account__save(NULL,'15900','Inventory / Freight','A','', NULL, false, false, string_to_array('IC', ':'), false, false);
SELECT account_heading_save(NULL, '16000', 'STATUTORY DEBTORS', NULL);
SELECT account__save(NULL,'16100','INPUT GST','L','', NULL, false, false, string_to_array('AR_tax:AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account_heading_save(NULL, '18000', 'CAPITAL ASSETS', NULL);
SELECT account__save(NULL,'18100','Land and Buildings','A','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'18200','Accumulated Amortization -Land & Buildings','A','', NULL, true, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'18300','Office Furniture & Equipment','A','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'18400','Accumulated Amortization -Furniture & Equipment','A','', NULL, true, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'18500','Vehicle','A','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'18600','Accumulated Amortization -Vehicle','A','', NULL, true, false, string_to_array('', ':'), false, false);
SELECT account_heading_save(NULL, '20000', 'LIABILITIES', NULL);
SELECT account_heading_save(NULL, '21000', 'CURRENT LIABILITIES', NULL);
SELECT account__save(NULL,'21100','Accounts Payable','L','', NULL, false, false, string_to_array('AP', ':'), false, false);
SELECT account_heading_save(NULL, '22000', 'STATUTORY CREDITORS', NULL);
SELECT account__save(NULL,'22100','OUTPUT GST','L','', NULL, false, false, string_to_array('AR_tax:AP_tax:IC_taxpart:IC_taxservice', ':'), false, false);
SELECT account__save(NULL,'22200','GST Settlement Account','L','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'22300','Corporate Taxes Payable','L','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account_heading_save(NULL, '23000', 'PAYROLL ACCOUNTS', NULL);
SELECT account__save(NULL,'23100','Workers Net Salary Payable','L','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'23200','PAYG Witholding Payable','L','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'23300','Superannuation Plan Payable','L','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account_heading_save(NULL, '26000', 'LONG TERM LIABILITIES', NULL);
SELECT account__save(NULL,'26100','Bank Loans','L','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'26200','Loans from Shareholders','L','', NULL, false, false, string_to_array('AP_paid', ':'), false, false);
SELECT account_heading_save(NULL, '33000', 'SHARE CAPITAL', NULL);
SELECT account__save(NULL,'33100','Common Shares','Q','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account_heading_save(NULL, '40000', 'REVENUE', NULL);
SELECT account_heading_save(NULL, '41000', 'SALES REVENUE', NULL);
SELECT account__save(NULL,'41100','Sales / Locks','I','', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'41200','Sales / Computers','I','', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'41300','Sales / Electronics','I','', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'41400','Sales / Software','I','', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'41800','Sales / Misc','I','', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account__save(NULL,'41900','Sales / Freight','I','', NULL, false, false, string_to_array('AR_amount:IC_sale', ':'), false, false);
SELECT account_heading_save(NULL, '42000', 'CONSULTING REVENUE', NULL);
SELECT account__save(NULL,'42100','Consulting','I','', NULL, false, false, string_to_array('AR_amount:IC_income', ':'), false, false);
SELECT account__save(NULL,'42900','Consulting Misc','I','', NULL, false, false, string_to_array('AR_amount:IC_income', ':'), false, false);
SELECT account_heading_save(NULL, '43000', 'OTHER REVENUE', NULL);
SELECT account__save(NULL,'43100','Interest and Financial Income','I','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'43200','Foreign Exchange Gain','I','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account_heading_save(NULL, '50000', 'COST OF GOODS SOLD', NULL);
SELECT account__save(NULL,'51100','COGS / Locks','E','', NULL, false, false, string_to_array('AP_amount:IC_cogs', ':'), false, false);
SELECT account__save(NULL,'51200','COGS / Computers','E','', NULL, false, false, string_to_array('AP_amount:IC_cogs', ':'), false, false);
SELECT account__save(NULL,'51300','COGS / Electronics','E','', NULL, false, false, string_to_array('AP_amount:IC_cogs', ':'), false, false);
SELECT account__save(NULL,'51400','COGS / Software','E','', NULL, false, false, string_to_array('AP_amount:IC_cogs', ':'), false, false);
SELECT account__save(NULL,'51800','COGS / Misc','E','', NULL, false, false, string_to_array('AP_amount:IC_cogs', ':'), false, false);
SELECT account__save(NULL,'51850','Purchases','E','', NULL, false, false, string_to_array('AP_amount:IC_cogs:IC_expense', ':'), false, false);
SELECT account__save(NULL,'51900','Freight','E','', NULL, false, false, string_to_array('AP_amount:IC_expense', ':'), false, false);
SELECT account_heading_save(NULL, '60000', 'EXPENSES', NULL);
SELECT account_heading_save(NULL, '61000', 'PAYROLL EXPENSES', NULL);
SELECT account__save(NULL,'61001','Wages & Salaries','E','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'61002','PAYG Tax Expense','E','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'61003','Superannuation Plan Expense','E','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account_heading_save(NULL, '62000', 'GENERAL & ADMINISTRATIVE EXPENSES', NULL);
SELECT account__save(NULL,'62001','Accounting & Legal','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62002','Advertising & Promotions','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62003','Amortization Expense','E','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'62004','Income Taxes','E','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'62005','Insurance','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62006','Office Supplies','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62007','Rent and Rates','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62008','Repair & Maintenance','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62009','Telephone, Fax and Internet','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62010','Travel & Entertainment','E','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'62011','Utilities','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62012','Registrations','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account__save(NULL,'62013','Licenses','E','', NULL, false, false, string_to_array('AP_amount', ':'), false, false);
SELECT account_heading_save(NULL, '63000', 'OTHER EXPENSES', NULL);
SELECT account__save(NULL,'63100','Interest & Bank Charges','E','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'63200','Foreign Exchange Loss','E','', NULL, false, false, string_to_array('', ':'), false, false);
SELECT account__save(NULL,'63300','Bad Debts','E','', NULL, false, false, string_to_array('', ':'), false, false);
--
insert into tax (chart_id,rate) values ((select id from account where accno = '16100'),0.1);
insert into tax (chart_id,rate) values ((select id from account where accno = '22100'),0.1);
--
INSERT INTO defaults (setting_key, value) VALUES ('inventory_accno_id', (select id from account where accno = '15800'));

 INSERT INTO defaults (setting_key, value) VALUES ('income_accno_id', (select id from account where accno = '41800'));

 INSERT INTO defaults (setting_key, value) VALUES ('expense_accno_id', (select id from account where accno = '51850'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxgain_accno_id', (select id from account where accno = '43200'));

 INSERT INTO defaults (setting_key, value) VALUES ('fxloss_accno_id', (select id from account where accno = '63200'));

 INSERT INTO defaults (setting_key, value) VALUES ('curr', 'AUD');

 INSERT INTO defaults (setting_key, value) VALUES ('weightunit', 'kg');

commit;
insert into currency (curr, description)
  values ('AUD', 'AUD'),
         ('USD', 'USD'),
         ('EUR', 'EUR');


UPDATE account
   SET tax = true
WHERE id
   IN (SELECT account_id
       FROM account_link
       WHERE description LIKE '%_tax');

