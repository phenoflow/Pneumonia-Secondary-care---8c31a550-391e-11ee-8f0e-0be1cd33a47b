# Eleftheria Vasileiou, Chukwuma Iwundu, Alex Williams, Clare MacRae, 2023.

import sys, csv, re

codes = [{"code":"CA40.1","system":"icd11"},{"code":"CA40.1Z","system":"icd11"},{"code":"CA40.1","system":"icd11"},{"code":"CA40.1Z","system":"icd11"},{"code":"480.9","system":"icd9"},{"code":"480.9","system":"icd9"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('pneumonia-secondary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["viral-pneumonia-secondary-care---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["viral-pneumonia-secondary-care---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["viral-pneumonia-secondary-care---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
