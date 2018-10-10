def convert_date(date)
    ans = date[0...-2].to_i #getting the digit
     #the last two letters all always taking two spaces whether it's 
    # st, nd or rd, th
    if ans < 10 
        ans = "0" + ans.to_s
    else 
        ans = ans.to_s
    end 
    ans 
end 

def convert_date_format(dates)
    # for the month, i'm hard coding a hash to convert
    month_hash = {'Jan' => '01', "Feb" => '02', 'Mar' => '03',
    'Apr' => '04', 'May' => '05', 'Jun' => '06', "Jul" => '07',
    'Aug' => '08', "Sep" => '09', 'Oct' => '10', 'Nov' => '11',
    'Dec' => '12'
    }
    result = []
    dates.each do |el|
        el = el.split(" ") #return an array of 1st el being year, 2nd being Month, last being date
        year, month, date = el[0], el[1], el[2]
        converted = month_hash[month] + "-" + convert_date(date) + "-" + year 
        result << converted 
    end 
    result
    # for the date i'll write a helper function 
end 

convert_date('11th')

convert_date_format(['2018 Jan 21st', '2015 Mar 22nd']) 
# returns ["01-21-2018", "03-22-2015"]