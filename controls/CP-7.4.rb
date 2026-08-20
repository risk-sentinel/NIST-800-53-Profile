control 'CP-7 (4)' do
  impact 0.5
  title 'Preparation for Use'
  desc <<~DESC
    Prepare the alternate processing site so that the site can serve as the operational site supporting essential mission and business functions.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CP-07(04) the alternate processing site is prepared so that the site can serve as the operational site supporting essential mission and business functions.

    Assessment methods and objects:
      EXAMINE: Contingency planning policy; procedures addressing alternate processing sites; contingency plan; alternate processing site; alternate processing site agreements; alternate processing site configurations; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with contingency plan alternate processing site responsibilities; organizational personnel with system recovery responsibilities; organizational personnel with information security responsibilities
      TEST: Mechanisms supporting and/or implementing recovery at the alternate processing site
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Site preparation includes establishing configuration settings for systems at the alternate processing site consistent with the requirements for such settings at the primary site and ensuring that essential supplies and logistical considerations are in place.
  GUIDANCE
  tag nist: ['CP-7 (4)']
  tag rev: 'Rev_5'
  tag family: 'Contingency Planning'
  tag baseline: %w{HIGH}
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control CP-7 (4)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
