report 50002 "Employee Training Report"
{
    ApplicationArea = All;
    Caption = 'Employee Training Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = 'Emp train.docx';
    dataset
    {
        dataitem(Employee; Employee)
        {
            column(No_; "No.") { }
            column(FullName; FullName) { }

            dataitem("Employee Training"; "Employee Training")
            {
                DataItemLink = "Employee No." = field("No.");
                column(Training_Name; "Training Name") { }
                column(Description; Description) { }
                column(Duration; Duration) { }
                column(TotalDuration; TotalDuration){}
                column(Status; Status) { }
                column(Actual_Start_Date; "Actual Start Date") { }
                column(Actual_End_Date; "Actual End Date") { }
                column(Planned_Start_Date; "Planned Start Date") { }
                column(Planned_End_Date; "Planned End Date") { }
                column(Total_Training_Target; "Total Training Target") { }
                column(Total_Training_Completed; "Total Training Completed") { }

                trigger OnPreDataItem()
                begin
                    TotalDuration := 0;
                    TotalCompleted:=0;
                end;

                trigger OnAfterGetRecord()
                begin
                    // if "Employee Training"."Employee No." <> '' then
                    //  Employee.SetRange("No.", "Employee Training"."Employee No.");

                    TotalDuration += "Employee Training".Duration;
                    "Total Training Target":=TotalDuration;

                    if "Employee Training".Status = Status::Completed then
                        TotalCompleted += "Employee Training".Duration;
                        "Total Training Completed" := TotalCompleted;
                end;



            }
        }
    }
    var
        TotalDuration: Integer;
        TotalCompleted : Integer;
}
