-------------------------------
---------CREATE TABLES --------
-------------------------------

USE [TestTravel]
GO

/****** Object:  Table [dbo].[sales]    Script Date: 28/11/2024 1:04:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[sales](
	[id_sale] [int] NOT NULL,
	[id_customer] [int] NULL,
	[abn_number] [varchar](20) NULL,
	[number_invoice] [int] NULL,
	[date_sale] [date] NULL,
	[date_review] [date] NULL,
	[amount] [decimal](10, 2) NULL,
	[taxes] [decimal](10, 2) NULL,
	[commission] [decimal](10, 2) NULL,
	[id_user] [int] NULL,
	[id_branch] [int] NULL,
	[observation] [text] NULL,
	[id_state] [int] NULL,
	[id_destination] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[sales]  WITH CHECK ADD FOREIGN KEY([id_branch])
REFERENCES [dbo].[branches] ([id_branch])
GO

ALTER TABLE [dbo].[sales]  WITH CHECK ADD FOREIGN KEY([id_customer])
REFERENCES [dbo].[customer] ([id_customer])
GO

ALTER TABLE [dbo].[sales]  WITH CHECK ADD FOREIGN KEY([id_destination])
REFERENCES [dbo].[destination] ([id_destination])
GO

ALTER TABLE [dbo].[sales]  WITH CHECK ADD FOREIGN KEY([id_state])
REFERENCES [dbo].[state_sales] ([id_state])
GO

ALTER TABLE [dbo].[sales]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id_user])
GO




INSERT INTO Sales (ID, CustomerID, ABN, InvoiceID, StartDate, EndDate, TotalAmount, Discount, Tax, Quantity, DiscountType, Description, SalesPersonID, PaymentMethodID)
VALUES
(1, 1, 'ABN001', 1001, '2024-01-15', '2024-01-20', 500.00, 50.00, 25.00, 6, 1, 'First sale of the year', 1, 1),
(2, 2, 'ABN002', 1002, '2024-02-10', '2024-02-15', 750.00, 75.00, 37.50, 7, 2, 'Promotional discount applied', 2, 2),
(3, 3, 'ABN003', 1003, '2024-03-12', '2024-03-18', 1200.00, 120.00, 60.00, 8, 3, 'Customer requested expedited shipping', 3, 3),
(4, 4, 'ABN004', 1004, '2024-04-05', '2024-04-10', 950.00, 95.00, 47.50, 9, 4, 'Returned item', 4, 4),
(5, 5, 'ABN005', 1005, '2024-05-22', '2024-05-28', 650.00, 65.00, 32.50, 10, 5, 'Gift card used', 5, 5),
(6, 6, 'ABN006', 1006, '2024-06-15', '2024-06-20', 1100.00, 110.00, 55.00, 11, 6, 'Special discount for repeat customer', 6, 6),
(7, 7, 'ABN007', 1007, '2024-07-10', '2024-07-15', 800.00, 80.00, 40.00, 12, 7, 'First-time purchase', 7, 7),
(8, 8, 'ABN008', 1008, '2024-08-03', '2024-08-08', 400.00, 40.00, 20.00, 13, 8, 'Order expedited', 1, 8),
(9, 9, 'ABN009', 1009, '2024-09-20', '2024-09-25', 950.00, 95.00, 47.50, 14, 9, 'Seasonal promotion', 2, 9),
(10, 10, 'ABN010', 1010, '2024-10-12', '2024-10-18', 850.00, 85.00, 42.50, 15, 10, 'Customer satisfaction follow-up', 3, 1),
(11, 11, 'ABN011', 1011, '2024-11-25', '2024-11-30', 1050.00, 105.00, 52.50, 16, 1, 'Bulk order discount', 4, 11),
(12, 12, 'ABN012', 1012, '2024-12-14', '2024-12-20', 1300.00, 130.00, 65.00, 17, 2, 'Holiday sale', 5, 12),
(13, 13, 'ABN013', 1013, '2024-01-22', '2024-01-30', 600.00, 60.00, 30.00, 18, 3, 'First-time buyer discount', 6, 13),
(14, 14, 'ABN014', 1014, '2024-02-18', '2024-02-25', 700.00, 70.00, 35.00, 19, 4, 'Late delivery', 7, 14),
(15, 15, 'ABN015', 1015, '2024-03-05', '2024-03-10', 800.00, 80.00, 40.00, 20, 5, 'Customer feedback received', 1, 15),
(16, 16, 'ABN016', 1016, '2024-04-10', '2024-04-15', 500.00, 50.00, 25.00, 21, 6, 'Order error corrected', 2, 16),
(17, 17, 'ABN017', 1017, '2024-05-05', '2024-05-10', 900.00, 90.00, 45.00, 22, 7, 'Volume discount applied', 3, 17),
(18, 18, 'ABN018', 1018, '2024-06-20', '2024-06-25', 950.00, 95.00, 47.50, 23, 8, 'Customer requested refund', 4, 18),
(19, 19, 'ABN019', 1019, '2024-07-15', '2024-07-20', 750.00, 75.00, 37.50, 24, 9, 'Order shipped late', 5, 19),
(20, 20, 'ABN020', 1020, '2024-08-10', '2024-08-15', 600.00, 60.00, 30.00, 25, 2, 'Invoice corrected', 6, 20),
(21, 21, 'ABN021', 1021, '2024-09-05', '2024-09-10', 850.00, 85.00, 42.50, 26, 1, 'Customer upgraded to premium', 7, 21),
(22, 22, 'ABN022', 1022, '2024-10-22', '2024-10-28', 1000.00, 100.00, 50.00, 27, 2, 'Special request fulfilled', 1, 22),
(23, 23, 'ABN023', 1023, '2024-11-15', '2024-11-20', 950.00, 95.00, 47.50, 28, 3, 'Discounted rate', 2, 23),
(24, 24, 'ABN024', 1024, '2024-12-10', '2024-12-15', 550.00, 55.00, 27.50, 29, 4, 'Bulk purchase', 3, 24),
(25, 25, 'ABN025', 1025, '2024-01-18', '2024-01-23', 1200.00, 120.00, 60.00, 30, 5, 'Customer service follow-up', 4, 25);


---------------------------------------------------
---------------------------------------------------
-------------------QUERYS -------------------------
---------------------------------------------------
---------------------------------------------------

Select * from [sales]