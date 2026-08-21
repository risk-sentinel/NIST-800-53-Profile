control 'IA-03' do
  impact 0.5
  title "#{input('ia_03_odp_01')} are uniquely identified and authenticated before establishing a #{input('ia_03_odp_02')} connection."
  desc <<~DESC
    Uniquely identify and authenticate #{input('ia_03_odp_01')} before establishing a #{input('ia_03_odp_02')} connection.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('ia_03_odp_01')} are uniquely identified and authenticated before establishing a #{input('ia_03_odp_02')} connection.

    Assessment methods and objects:
      EXAMINE: Identification and authentication policy; system security plan; procedures addressing device identification and authentication; system design documentation; list of devices requiring unique identification and authentication; device connection reports; system configuration settings and associated documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with operational responsibilities for device identification and authentication; organizational personnel with information security responsibilities; system/network administrators; system developers
      TEST: Mechanisms supporting and/or implementing device identification and authentication capabilities
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Devices that require unique device-to-device identification and authentication are defined by type, device, or a combination of type and device. Organization-defined device types include devices that are not owned by the organization. Systems use shared known information (e.g., Media Access Control [MAC], Transmission Control Protocol/Internet Protocol [TCP/IP] addresses) for device identification or organizational authentication solutions (e.g., Institute of Electrical and Electronics Engineers (IEEE) 802.1x and Extensible Authentication Protocol [EAP], RADIUS server with EAP-Transport Layer Security [TLS] authentication, Kerberos) to identify and authenticate devices on local and wide area networks. Organizations determine the required strength of authentication mechanisms based on the security categories of systems and mission or business requirements. Because of the challenges of implementing device authentication on a large scale, organizations can restrict the application of the control to a limited number/type of devices based on mission or business needs.
  GUIDANCE
  tag nist: ['IA-3']
  tag control: 'IA-3'
  tag objective: 'IA-03'
  tag rev: 'Rev_5'
  tag family: 'Identification and Authentication'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_ia_3: true
  tag odp: %w{ia_03_odp_01 ia_03_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective IA-03' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
