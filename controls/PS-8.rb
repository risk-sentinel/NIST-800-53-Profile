control 'PS-8' do
  impact 0.5
  title 'Personnel Sanctions'
  desc <<~DESC
    a. Employ a formal sanctions process for individuals failing to comply with established information security and privacy policies and procedures; and
    b. Notify #{input('ps_08_odp_01')} within #{input('ps_08_odp_02')} when a formal employee sanctions process is initiated, identifying the individual sanctioned and the reason for the sanction.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PS-08a. a formal sanctions process is employed for individuals failing to comply with established information security and privacy policies and procedures;
      PS-08b. #{input('ps_08_odp_01')} is/are notified within #{input('ps_08_odp_02')} when a formal employee sanctions process is initiated, identifying the individual sanctioned and the reason for the sanction.

    Assessment methods and objects:
      EXAMINE: Personnel security policy; personnel security procedures; procedures addressing personnel sanctions; access agreements (including non-disclosure agreements, acceptable use agreements, rules of behavior, and conflict-of-interest agreements); list of personnel or roles to be notified of formal employee sanctions; records or notifications of formal employee sanctions; system security plan; privacy plan; personally identifiable information processing policy; other relevant documents or records
      INTERVIEW: Organizational personnel with personnel security responsibilities; legal counsel; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for managing formal employee sanctions; mechanisms supporting and/or implementing formal employee sanctions notifications
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Organizational sanctions reflect applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Sanctions processes are described in access agreements and can be included as part of general personnel policies for organizations and/or specified in security and privacy policies. Organizations consult with the Office of the General Counsel regarding matters of employee sanctions.
  GUIDANCE
  tag nist: ['PS-8']
  tag rev: 'Rev_5'
  tag family: 'Personnel Security'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ps_08_odp_01 ps_08_odp_02}

  describe 'NIST SP 800-53 Rev 5 control PS-8' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
