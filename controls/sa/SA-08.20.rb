control 'SA-08(20)' do
  impact 0.5
  title "#{input('sa_08_20_odp')} implement the security design principle of secure metadata management."
  desc <<~DESC
    Implement the security design principle of secure metadata management in #{input('sa_08_20_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_08_20_odp')} implement the security design principle of secure metadata management.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; procedures addressing the security design principle of metadata management used in the specification, design, development, implementation, and modification of the system; system design documentation; security and privacy requirements and specifications for the system; system security and privacy architecture; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with the responsibility for determining system security and privacy requirements; organizational personnel with system specification, design, development, implementation, and modification responsibilities; system developers; organizational personnel with information security responsibilities
      TEST: Organizational processes for applying the security design principle of metadata management in system specification, design, development, implementation, and modification; mechanisms supporting the application of the security design principle of metadata management in system specification, design, development, implementation, and modification
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The principle of secure metadata management states that metadata are "first class" objects with respect to security policy when the policy requires either complete protection of information or that the security subsystem be self-protecting. The principle of secure metadata management is driven by the recognition that a system, subsystem, or component cannot achieve self-protection unless it protects the data it relies on for correct execution. Data is generally not interpreted by the system that stores it. It may have semantic value (i.e., it comprises information) to users and programs that process the data. In contrast, metadata is information about data, such as a file name or the date when the file was created. Metadata is bound to the target data that it describes in a way that the system can interpret, but it need not be stored inside of or proximate to its target data. There may be metadata whose target is itself metadata (e.g., the classification level or impact level of a file name), including self-referential metadata.

    The apparent secondary nature of metadata can lead to neglect of its legitimate need for protection, resulting in a violation of the security policy that includes the exfiltration of information. A particular concern associated with insufficient protections for metadata is associated with multilevel secure (MLS) systems. MLS systems mediate access by a subject to an object based on relative sensitivity levels. It follows that all subjects and objects in the scope of control of the MLS system are either directly labeled or indirectly attributed with sensitivity levels. The corollary of labeled metadata for MLS systems states that objects containing metadata are labeled. As with protection needs assessments for data, attention is given to ensure that the confidentiality and integrity protections are individually assessed, specified, and allocated to metadata, as would be done for mission, business, and system data.
  GUIDANCE
  tag nist: ['SA-8 (20)']
  tag control: 'SA-8 (20)'
  tag objective: 'SA-08(20)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_8_20: true
  tag odp: %w{sa_08_20_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-08(20)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
