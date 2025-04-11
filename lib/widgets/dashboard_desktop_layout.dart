import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_backgrond_container.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()
        ),

        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: AllExpensesAndQuickInvoiceSection(),
                ),
            
                Expanded(
              
              child: Column(
                children: [
                  MyCardTransactionHistorySection(),
            
                  Expanded(
                    flex: 2,
                    child: 
                  IncomeSection(),
                  ),
                ],
              )),
              ],
            ),
              )
            ],
            
          ),
        ),

        
      ],
    );
  }
}


class MyCardTransactionHistorySection extends StatelessWidget {
  const MyCardTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 5,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}