unit module Endpoints;

# 
our %endpoints is export = [
    # keyed by number in the API list
    # value is the endpoint string 

    # 1 user 
    u1 => "/user";

    # 3 budget queries
    b1 => "/budgets";
    b2 => "/budgets/{budget_id}";
    b3 => "/budgets/{budget_id}/settings";

    # 3 accounts for a budget
    a1 => "/budgets/{budget_id}/accounts";
    a2 => "POST";
    a3 => "/budgets/{budget_id}/accounts/{account_id}";

    # 4 categories for a budget
    c1 => "/budgets/{budget_id}/categories";
    c2 => "/budgets/{budget_id}/categories/{category_id}";
    c3 => "/budgets/{budget_id}/months/{month}/categories/{category_id}";
    c4 => "POST";

    # 2 payees for a budget
    p1 => "";
    p2 => "";

    # payee locations

    # months associated with a budget

    # 9 transactions for a budget
    t1 => "/budgets/{budget_id}/transactions";
    t2 => "POST";
    t3 => "POST";
    t4 => "POST";
    t5 => "/budgets/{budget_id}/transactions/{transaction_id}";
    t6 => "POST";
    t7 => "/budgets/{budget_id}/accounts/{account_id}/transactions";
    t8 => "/budgets/{budget_id}/categories/{category_id}/transactions";
    t9 => "/budgets/{budget_id}/payees/{payee_id}/transactions";

    # 2 scheduled transactions for a budget
    st1 => "/budgets/{budget_id}/scheduled_transactions";
    st2 => "/budgets/{budget_id}/scheduled_transactions/{scheduled_transactions_id}";

];
