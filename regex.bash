email="user@example.com"
if [[ $email =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$ ]]; then
    echo "Valid email address"
else
    echo "Invalid email address"
fi

ip_address="192.168.1.1"
if [[ $ip_address =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    echo "Valid IP address"
else
    echo "Invalid IP address"
fi

date_str="2023-12-06"
if [[ $date_str =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    echo "Valid date format"
else
    echo "Invalid date format"
fi

number="123.45"
if [[ $number =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Valid number format"
else
    echo "Invalid number format"
fi

alphanumeric="abc123"
if [[ $alphanumeric =~ ^[a-zA-Z0-9]+$ ]]; then
    echo "Valid alphanumeric string"
else
    echo "Invalid alphanumeric string"
fi

