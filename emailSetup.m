%% setup sending from Imperial College email account
setpref('Internet','SMTP_Server','smarthost.cc.ic.ac.uk');
setpref('Internet','E_mail','root@ic.ac.uk');

%% construct message
to = 'someone@domain';
subject = 'From MATLAB';
message = {'First line.'; 'Second line.'};
attachment = {'file_for_attachment.svg'};

%% edit the to string, and uncomment the lines below to send an email.
% sendmail(to,...
%     subject,...
%     message,...
%     attachment);