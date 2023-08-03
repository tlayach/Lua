--require "logging.email"

function sendEmail(theFromName, theFromEmail, theRcptName, theRcptEmail, theSubject, theMsg, theAttachment)
    local smtp = require("socket.smtp");
    local mime = require("mime");
    local ltn12 = require("ltn12");

    local mailServ = "XXX";
    local mailPort = "25";
    local mailLogin = "";
    local mailPwd = "*****";

    local mesgt = smtp.message{
        headers = {
            from = theFromName .. " " .. theFromEmail,
            to = theRcptName,
            subject = theSubject
        },

        body = {
            preable = "This email contains attachments.",

            [1] = {
                body = mime.eol(0, theMsg);
            },

            [2] = {
                headers = {
                    ["content-type"] = 'text/plain; name="' .. theAttachment .. '"',
                    ["content-disposition"] = 'attachment; filename="' .. theAttachment .. '"',
                    ["content-description"] = 'the send script\'s source',
                    ["content-transfer-encoding"] = "BASE64"
            },

            body = ltn12.source.chain(
                ltn12.source.file(io.open(theAttachment, "r")),
                ltn12.filter.chain(
                    mime.encode("base64"),
                    mime.wrap()
                )
            )},

            epilogue = "A few words at the end...";
        }
    }

    -- no authentication (login == "")
    local r, e;

    if string.len(mailLogin) == 0 then
        r, e = smtp.send {
            from = theFromEmail,
            rcpt = theRcptEmail,
            source = mesgt,
            server = mailServ,
            port = mailPort,
        }
    else
        r, e = smtp.send {
            from = theFromEmail,
            rcpt = theRcptEmail,
            source = mesgt,
            server = mailServ,
            port = mailPort,

            user = mailLogin,
            password = mailPwd
        }
    end

    return e;
end


local theFromName = "John";
local theFromEmail = "<my_email@server.com>";

local theRcptName = "Maria";
local theRcptEmail = {"<recipient_email@server.com>"};

local theSubject = "My subject";
local theMsg = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit...";

local theAttachment = "file.txt";


local e = sendEmail(theFromName, theFromEmail, theRcptName, theRcptEmail, theSubject, theMsg, theAttachment)

if (e) then
    io.stderr:write("could not send email: ", e, "\n");
end
