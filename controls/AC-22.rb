control 'AC-22' do
  impact 0.5
  title 'Publicly Accessible Content'
  desc <<~DESC
    a. Designate individuals authorized to make information publicly accessible;
    b. Train authorized individuals to ensure that publicly accessible information does not contain nonpublic information;
    c. Review the proposed content of information prior to posting onto the publicly accessible system to ensure that nonpublic information is not included; and
    d. Review the content on the publicly accessible system for nonpublic information #{input('ac_22_odp')} and remove such information, if discovered.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-22a. designated individuals are authorized to make information publicly accessible;
      AC-22b. authorized individuals are trained to ensure that publicly accessible information does not contain non-public information;
      AC-22c. the proposed content of information is reviewed prior to posting onto the publicly accessible system to ensure that non-public information is not included;
      AC-22d.
        AC-22d.[01] the content on the publicly accessible system is reviewed for non-public information #{input('ac_22_odp')};
        AC-22d.[02] non-public information is removed from the publicly accessible system, if discovered.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing publicly accessible content; list of users authorized to post publicly accessible content on organizational systems; training materials and/or records; records of publicly accessible information reviews; records of response to non-public information on public websites; system audit logs; security awareness training records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for managing publicly accessible information posted on organizational systems; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing management of publicly accessible content
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    In accordance with applicable laws, executive orders, directives, policies, regulations, standards, and guidelines, the public is not authorized to have access to nonpublic information, including information protected under the [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) and proprietary information. Publicly accessible content addresses systems that are controlled by the organization and accessible to the public, typically without identification or authentication. Posting information on non-organizational systems (e.g., non-organizational public websites, forums, and social media) is covered by organizational policy. While organizations may have individuals who are responsible for developing and implementing policies about the information that can be made publicly accessible, publicly accessible content addresses the management of the individuals who make such information publicly accessible.
  GUIDANCE
  tag nist: ['AC-22']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_22_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-22' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
