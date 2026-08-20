control 'AC-20 (3)' do
  impact 0.5
  title 'Non-organizationally Owned Systems — Restricted Use'
  desc <<~DESC
    Restrict the use of non-organizationally owned systems or system components to process, store, or transmit organizational information using #{input('ac_20_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-20(03) the use of non-organizationally owned systems or system components to process, store, or transmit organizational information is restricted using #{input('ac_20_03_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing the use of external systems; system design documentation; system configuration settings and associated documentation; system connection or processing agreements; account management documents; system audit records, other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for restricting or prohibiting the use of non-organizationally owned systems, system components, or devices; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing restrictions on the use of non-organizationally owned systems, components, or devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Non-organizationally owned systems or system components include systems or system components owned by other organizations as well as personally owned devices. There are potential risks to using non-organizationally owned systems or components. In some cases, the risk is sufficiently high as to prohibit such use (see [AC-20 b.](#ac-20_smt.b) ). In other cases, the use of such systems or system components may be allowed but restricted in some way. Restrictions include requiring the implementation of approved controls prior to authorizing the connection of non-organizationally owned systems and components; limiting access to types of information, services, or applications; using virtualization techniques to limit processing and storage activities to servers or system components provisioned by the organization; and agreeing to the terms and conditions for usage. Organizations consult with the Office of the General Counsel regarding legal issues associated with using personally owned devices, including requirements for conducting forensic analyses during investigations after an incident.
  GUIDANCE
  tag nist: ['AC-20 (3)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_20_03_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-20 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
