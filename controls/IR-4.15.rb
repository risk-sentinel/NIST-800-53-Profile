control 'IR-4 (15)' do
  impact 0.5
  title 'Public Relations and Reputation Repair'
  desc <<~DESC
    (a) Manage public relations associated with an incident; and
    (b) Employ measures to repair the reputation of the organization.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      IR-04(15)(a) public relations associated with an incident are managed;
      IR-04(15)(b) measures are employed to repair the reputation of the organization.

    Assessment methods and objects:
      EXAMINE: Incident response policy; procedures addressing incident response; procedures addressing incident handling; incident response plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with incident handling responsibilities; organizational personnel with information security responsibilities; organizational personnel with communications or public relations responsibilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    It is important for an organization to have a strategy in place for addressing incidents that have been brought to the attention of the general public, have cast the organization in a negative light, or have affected the organization’s constituents (e.g., partners, customers). Such publicity can be extremely harmful to the organization and affect its ability to carry out its mission and business functions. Taking proactive steps to repair the organization’s reputation is an essential aspect of reestablishing the trust and confidence of its constituents.
  GUIDANCE
  tag nist: ['IR-4 (15)']
  tag rev: 'Rev_5'
  tag family: 'Incident Response'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control IR-4 (15)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
