report 50002 "Employee Training Report"
{
    ApplicationArea = All;
    Caption = 'Employee Training Report';
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(EmployeeTraining; "Employee Training")
        {
            column(EmployeeNo; "Employee No.")
            {
            }
            column(EmployeeName; "Employee Name")
            {
            }
            column(TrainingName; "Training Name")
            {
            }
            column(Description; Description)
            {
            }
            column(Duration; "Duration")
            {
            }
            column(PlannedStartDate; "Planned Start Date")
            {
            }
            column(PlannedEndDate; "Planned End Date")
            {
            }
            column(Status; Status)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}