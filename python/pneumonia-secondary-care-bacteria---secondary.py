# Eleftheria Vasileiou, Chukwuma Iwundu, Alex Williams, Clare MacRae, 2023.

import sys, csv, re

codes = [{"code":"CA40.0","system":"icd11"},{"code":"CA40.0Y","system":"icd11"},{"code":"CA40.0Z","system":"icd11"},{"code":"CA40.0","system":"icd11"},{"code":"CA40.0Y","system":"icd11"},{"code":"CA40.0Z","system":"icd11"},{"code":"A31.0","system":"icd10"},{"code":"J15","system":"icd10"},{"code":"J15.6","system":"icd10"},{"code":"J15.8","system":"icd10"},{"code":"J17.0","system":"icd10"},{"code":"A31.0","system":"icd10"},{"code":"J15","system":"icd10"},{"code":"J15.6","system":"icd10"},{"code":"J15.8","system":"icd10"},{"code":"J17.0","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('pneumonia-secondary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["pneumonia-secondary-care-bacteria---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["pneumonia-secondary-care-bacteria---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["pneumonia-secondary-care-bacteria---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
