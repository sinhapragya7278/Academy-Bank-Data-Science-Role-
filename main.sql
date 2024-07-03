#data cleaning
select * from DATABASE."table_name"
select * from Database."table_name"
limit 10
select * from DATABASE."table_name"
order by "Score" DESC
limit 10
select * from DATABASE."table_name"
order by "Score" ASC
limit 10
SELECT column1, column2 FROM table_name;
select * from DATABASE"schema" where "Inst"=0
SELECT "Inst", COUNT("Account Key") 
FROM "v_DDA_Accounts" 
GROUP BY "Inst"
SELECT "Inst","Account Key"
from PUBLISH.PREMIER_EOM."v_DDA_Accounts_EOM"
SELECT *
FROM your_table
ORDER BY column_name
LIMIT 10;
pivoted_df = df.pivot(Acc='ACCT_KEY', Sta='STATUS_CODE', Bal='EOM_BALANCE')
pivoted_df = df.pivot(index='ACCT_KEY', columns='STATUS_CODE', values='EOM_BALANCE')
# data pivotting
import pandas as pd
file_path = r'C:\Users\Svc_Apexon2\Downloads\Worksheet1.csv'
df = pd.read_csv(r'C:\Users\Svc_Apexon2\Downloads\Worksheet1.csv')
df.head()
pivoted_df = df.pivot_table(index='ACCT_KEY', columns='DATE_LAST_UPDATED')
pivoted_df
#program
import pandas as pd
import numpy as np
import datetime as dtm
from sklearn.preprocessing import MinMaxScaler
from sklearn.model_selection import train_test_split
from sklearn.metrics import confusion_matrix,classification_report,precision_recall_curve
from sklearn.linear_model import LogisticRegression

from sklearn.ensemble import RandomForestClassifier

from sklearn.metrics import confusion_matrix

# Pull in dataset from base query and create copy
dt = pd.read_csv('Base_Query.csv')
dt_2 = dt[dt['ACCT_TYPE']!='CARD']

# Explore base dataset
print(dt.head())

# Test
print(dt_2['CLOSE_DATE'][dt_2['CLOSE_DATE'].notnull()==True])

print(len(dt_2))

# pivot all variables by state during selected time frames
pvt = pd.pivot_table(dt,index=['ACCT_KEY'],columns=['DATE_LAST_UPDATED'])

print(len(dt))

# pvt on dt_2 copy, copy the pivot
pvt_2 = pd.pivot_table(dt_2,index=['ACCT_KEY'],columns=['DATE_LAST_UPDATED'])

# Test
print(dt_2[dt_2['ACCT_KEY']=='1-9991000165-1'])

#print(pvt_3[pvt_3['CLOSED_BIN']['2021-12']==1])
print(pvt_3['CLOSED_BIN'])

ind_tst = []
for i in pvt_3.index:
    ind_tst.append(i)



print(dt_2.columns)
