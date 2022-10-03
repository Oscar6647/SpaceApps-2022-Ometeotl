import pickle
#Opens model chosen Rain fall in this case

loaded_model = pickle.load(open("model/RAINFALL_MTY.model", 'rb'))

#This is a user input example and is inserted into the model to show results
result = loaded_model.predict([[4,5,6,7,8,9,10,11]])
print("result:", result) #debug to view results

#results vary therefore a different set of prints will be deployed for each case
if result  == 0:
    print("SUNNY")
elif result == 1:
    print("Rain but not that heavy")
else:
    print("RAINING COOL")

#Opens model chosen Pollution in this case
loaded_model = pickle.load(open("model/Pollution_Air.model", 'rb'))

#This is a user input example and is inserted into the model to show results
result = loaded_model.predict([[4,5,6,7,8,9]])
print("result:", result)#debug to view results

#results vary therefore a different set of prints will be deployed for each case
if result == 0:
    print("GO!")
else:
    print("Stay")