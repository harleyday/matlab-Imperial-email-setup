%% setup sending from Imperial College email account
[password, mailfrom] = passwordEntryDialog('enterUserName', true, 'DefaultUserName', '@ic.ac.uk', 'PasswordLengthMin',0, 'PasswordLengthMax', inf);

setpref('Internet','E_mail',mailfrom);
setpref('Internet','SMTP_Server','smtp.office365.com');
setpref('Internet','SMTP_Username',mailfrom);
setpref('Internet','SMTP_Password',password);
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth','true');
props.setProperty('mail.smtp.socketFactory.class','javax.net.ssl.SSLSocketFactory');
props.remove('mail.smtp.socketFactory.class');  %Some recommendations included commenting out the line above and using this line instead to remove the SSL ...?
props.setProperty('mail.smtp.port','587');  %have tried this line, and the below line, and both, with ports 465, 587, and 25.  Port 465 works with google.
props.setProperty('mail.smtp.socketFactory.port','587'); 
props.setProperty('mail.smtp.starttls.enable', 'true' );  %was recommended for the ports 587 and 25

%% construct message
to = 'someone@domain';
subject = 'From MATLAB';
message = {'First line.'; 'Second line.'};
attachment = {'file_for_attachment.svg'};

% edit the to string, and uncomment the lines below to send an email.
%sendmail(to,...
%     subject,...
%     message,...
%     attachment);