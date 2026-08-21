control 'SI-20' do
  impact 0.5
  title "data or capabilities are embedded in #{input('si_20_odp')} to determine if organizational data has been exfiltrated or improperly removed from the organization."
  desc <<~DESC
    Embed data or capabilities in the following systems or system components to determine if organizational data has been exfiltrated or improperly removed from the organization: #{input('si_20_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      data or capabilities are embedded in #{input('si_20_odp')} to determine if organizational data has been exfiltrated or improperly removed from the organization.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; personally identifiable information processing policy; procedures addressing software and information integrity; system design documentation; system configuration settings and associated documentation; policy and procedures addressing the systems security engineering technique of deception; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for detecting tainted data; organizational personnel with systems security engineering responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Automated mechanisms for post-breach detection; decoys, traps, lures, and methods for deceiving adversaries; detection and notification mechanisms
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Many cyber-attacks target organizational information, or information that the organization holds on behalf of other entities (e.g., personally identifiable information), and exfiltrate that data. In addition, insider attacks and erroneous user procedures can remove information from the system that is in violation of the organizational policies. Tainting approaches can range from passive to active. A passive tainting approach can be as simple as adding false email names and addresses to an internal database. If the organization receives email at one of the false email addresses, it knows that the database has been compromised. Moreover, the organization knows that the email was sent by an unauthorized entity, so any packets it includes potentially contain malicious code, and that the unauthorized entity may have potentially obtained a copy of the database. Another tainting approach can include embedding false data or steganographic data in files to enable the data to be found via open-source analysis. Finally, an active tainting approach can include embedding software in the data that is able to "call home," thereby alerting the organization to its "capture," and possibly its location, and the path by which it was exfiltrated or removed.
  GUIDANCE
  tag nist: ['SI-20']
  tag control: 'SI-20'
  tag objective: 'SI-20'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_20: true
  tag odp: %w{si_20_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-20' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
