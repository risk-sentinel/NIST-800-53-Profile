control 'SI-4 (13)' do
  impact 0.5
  title 'Analyze Traffic and Event Patterns'
  desc <<~DESC
    (a) Analyze communications traffic and event patterns for the system;
    (b) Develop profiles representing common traffic and event patterns; and
    (c) Use the traffic and event profiles in tuning system-monitoring devices.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-04(13)(a)
        SI-04(13)(a)[01] communications traffic for the system is analyzed;
        SI-04(13)(a)[02] event patterns for the system are analyzed;
      SI-04(13)(b)
        SI-04(13)(b)[01] profiles representing common traffic are developed;
        SI-04(13)(b)[02] profiles representing event patterns are developed;
      SI-04(13)(c)
        SI-04(13)(c)[01] traffic profiles are used in tuning system-monitoring devices;
        SI-04(13)(c)[02] event profiles are used in tuning system-monitoring devices.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing system monitoring tools and techniques; system design documentation; system monitoring tools and techniques documentation; system configuration settings and associated documentation; list of profiles representing common traffic patterns and/or events; system protocols documentation; list of acceptable thresholds for false positives and false negatives; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system; organizational personnel responsible for monitoring the system; organizational personnel responsible for the intrusion detection system
      TEST: Organizational processes for intrusion detection and system monitoring; mechanisms supporting and/or implementing intrusion detection and system monitoring capabilities; mechanisms supporting and/or implementing the analysis of communications traffic and event patterns
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Identifying and understanding common communications traffic and event patterns help organizations provide useful information to system monitoring devices to more effectively identify suspicious or anomalous traffic and events when they occur. Such information can help reduce the number of false positives and false negatives during system monitoring.
  GUIDANCE
  tag nist: ['SI-4 (13)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control SI-4 (13)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
