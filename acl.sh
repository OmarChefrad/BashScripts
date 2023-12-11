#access control list
umask -S
chown 
chgrp
setfacl [option] acl_spec file_or_directory
setfacl -m u:username:rw,g:groupname:rw /path/to/your/file
setfacl -b /path/to/your/file
getfacl /path/to/your/file
