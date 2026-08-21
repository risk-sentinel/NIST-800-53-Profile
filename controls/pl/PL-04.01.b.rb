control 'PL-04(01)(b)' do
  impact 0.5
  title "the rules of behavior include restrictions on posting organizational information on public websites;"
  desc <<~DESC
    Include in the rules of behavior, restrictions on:
      (a) Use of social media, social networking sites, and external sites/applications;
      (b) Posting organizational information on public websites; and
      (c) Use of organization-provided identifiers (e.g., email addresses) and authentication secrets (e.g., passwords) for creating accounts on external sites/applications.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the rules of behavior include restrictions on posting organizational information on public websites;

    Assessment methods and objects:
      EXAMINE: Security and privacy planning policy; procedures addressing rules of behavior for system users; rules of behavior; training policy; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibility for establishing, reviewing, and updating rules of behavior; organizational personnel with responsibility for literacy training and awareness and role-based training; organizational personnel who are authorized users of the system and have signed rules of behavior; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for establishing rules of behavior; mechanisms supporting and/or implementing the establishment of rules of behavior
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Social media, social networking, and external site/application usage restrictions address rules of behavior related to the use of social media, social networking, and external sites when organizational personnel are using such sites for official duties or in the conduct of official business, when organizational information is involved in social media and social networking transactions, and when personnel access social media and networking sites from organizational systems. Organizations also address specific rules that prevent unauthorized entities from obtaining non-public organizational information from social media and networking sites either directly or through inference. Non-public information includes personally identifiable information and system account information.
  GUIDANCE
  tag nist: ['PL-4 (1)']
  tag control: 'PL-4 (1)'
  tag objective: 'PL-04(01)(b)'
  tag rev: 'Rev_5'
  tag family: 'Planning'
  tag baseline: %w{LOW MODERATE HIGH PRIVACY}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag baseline_privacy: true
  tag control_pl_4_1: true

  describe 'NIST SP 800-53A Rev 5 objective PL-04(01)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
