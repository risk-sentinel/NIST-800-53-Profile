control 'SC-07(10)(b)' do
  impact 0.5
  title "exfiltration tests are conducted #{input('sc_07_10_odp')}."
  desc <<~DESC
    (a) Prevent the exfiltration of information; and
    (b) Conduct exfiltration tests #{input('sc_07_10_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      exfiltration tests are conducted #{input('sc_07_10_odp')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing boundary protection; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with boundary protection responsibilities
      TEST: Mechanisms implementing boundary protection capabilities that prevent the unauthorized exfiltration of information across managed interfaces
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Prevention of exfiltration applies to both the intentional and unintentional exfiltration of information. Techniques used to prevent the exfiltration of information from systems may be implemented at internal endpoints, external boundaries, and across managed interfaces and include adherence to protocol formats, monitoring for beaconing activity from systems, disconnecting external network interfaces except when explicitly needed, employing traffic profile analysis to detect deviations from the volume and types of traffic expected, call backs to command and control centers, conducting penetration testing, monitoring for steganography, disassembling and reassembling packet headers, and using data loss and data leakage prevention tools. Devices that enforce strict adherence to protocol formats include deep packet inspection firewalls and Extensible Markup Language (XML) gateways. The devices verify adherence to protocol formats and specifications at the application layer and identify vulnerabilities that cannot be detected by devices that operate at the network or transport layers. The prevention of exfiltration is similar to data loss prevention or data leakage prevention and is closely associated with cross-domain solutions and system guards that enforce information flow requirements.
  GUIDANCE
  tag nist: ['SC-7 (10)']
  tag control: 'SC-7 (10)'
  tag objective: 'SC-07(10)(b)'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_7_10: true
  tag odp: %w{sc_07_10_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-07(10)(b)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
