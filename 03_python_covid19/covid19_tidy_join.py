#!/usr/bin/env python
# coding: utf-8

# In[1]:


get_ipython().system('pip install pandas')


# In[2]:


import pandas as pd


# In[3]:


confirmed_url = "https://raw.githubusercontent.com/CSSEGISandData/COVID-19/master/csse_covid_19_data/csse_covid_19_time_series/time_series_19-covid-Confirmed.csv"


# In[4]:


confirmed = pd.read_csv(confirmed_url)
confirmed


# In[5]:


confirmed.columns[:4]


# In[6]:


tidy_confirmed = confirmed.melt(id_vars=confirmed.columns[:4], var_name='Date', value_name='Patients')
drop_mask = (tidy_confirmed['Patients'] != 0) & (tidy_confirmed['Patients'].notna())
tidy_confirmed = tidy_confirmed[drop_mask]


# In[7]:


tidy_confirmed.dtypes


# In[8]:


tidy_confirmed['Date'] = pd.to_datetime(tidy_confirmed['Date'])


# In[9]:


tidy_confirmed


# In[10]:


date_mask = (tidy_confirmed['Date'] > '2020-03-01') & (tidy_confirmed['Date'] <= '2020-03-31')


# In[11]:


tidy_confirmed[date_mask]
# twice as slow for me but easier to read
# tidy_confirmed.query('Date > "2020-03-01" & Date <= "2020-03-31"')


# In[14]:


tidy_confirmed[tidy_confirmed['Province/State'].str.contains('New York', na=False)]

