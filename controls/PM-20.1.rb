control 'PM-20 (1)' do
  impact 0.5
  title 'Privacy Policies on Websites, Applications, and Digital Services'
  desc <<~DESC
    Develop and post privacy policies on all external-facing websites, mobile applications, and other digital services, that:
      (a) Are written in plain language and organized in a way that is easy to understand and navigate;
      (b) Provide information needed by the public to make an informed decision about whether and how to interact with the organization; and
      (c) Are updated whenever the organization makes a substantive change to the practices it describes and includes a time/date stamp to inform the public of the date of the most recent changes.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PM-20(01)[01] privacy policies are developed and posted on all external-facing websites;
      PM-20(01)[02] privacy policies are developed and posted on all mobile applications;
      PM-20(01)[03] privacy policies are developed and posted on all other digital services;
      PM-20(01)(a)
        PM-20(01)(a)[01] the privacy policies are written in plain language;
        PM-20(01)(a)[02] the privacy policies are organized in a way that is easy to understand and navigate;
      PM-20(01)(b)
        PM-20(01)(b)[01] the privacy policies provide the information needed by the public to make an informed decision about whether to interact with the organization;
        PM-20(01)(b)[02] the privacy policies provide the information needed by the public to make an informed decision about how to interact with the organization;
      PM-20(01)(c)
        PM-20(01)(c)[01] the privacy policies are updated whenever the organization makes a substantive change to the practices it describes;
        PM-20(01)(c)[02] the privacy policies include a time/date stamp to inform the public of the date of the most recent changes.

    Assessment methods and objects:
      EXAMINE: Privacy program plan; privacy policies on the agency website, mobile applications, and/or other digital services
      INTERVIEW: Organizational personnel with privacy program information dissemination responsibilities; organizational personnel with privacy responsibilities
      TEST: Organizational procedures and practices for authorizing, conducting, managing, and reviewing personally identifiable information processing; organizational procedures and practices for disseminating privacy program information; mechanisms supporting the dissemination of privacy program information
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizations post privacy policies on all external-facing websites, mobile applications, and other digital services. Organizations post a link to the relevant privacy policy on any known, major entry points to the website, application, or digital service. In addition, organizations provide a link to the privacy policy on any webpage that collects personally identifiable information. Organizations may be subject to applicable laws, executive orders, directives, regulations, or policies that require the provision of specific information to the public. Organizational personnel consult with the senior agency official for privacy and legal counsel regarding such requirements.
  GUIDANCE
  tag nist: ['PM-20 (1)']
  tag rev: 'Rev_5'
  tag family: 'Program Management'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true

  describe 'NIST SP 800-53 Rev 5 control PM-20 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
