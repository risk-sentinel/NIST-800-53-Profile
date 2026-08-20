control 'AC-19' do
  impact 0.5
  title 'Access Control for Mobile Devices'
  desc <<~DESC
    a. Establish configuration requirements, connection requirements, and implementation guidance for organization-controlled mobile devices, to include when such devices are outside of controlled areas; and
    b. Authorize the connection of mobile devices to organizational systems.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-19a.
        AC-19a.[01] configuration requirements are established for organization-controlled mobile devices, including when such devices are outside of the controlled area;
        AC-19a.[02] connection requirements are established for organization-controlled mobile devices, including when such devices are outside of the controlled area;
        AC-19a.[03] implementation guidance is established for organization-controlled mobile devices, including when such devices are outside of the controlled area;
      AC-19b. the connection of mobile devices to organizational systems is authorized.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access control for mobile device usage (including restrictions); configuration management plan; system design documentation; system configuration settings and associated documentation; authorizations for mobile device connections to organizational systems; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel using mobile devices to access organizational systems; system/network administrators; organizational personnel with information security responsibilities
      TEST: Access control capability for mobile device connections to organizational systems; configurations of mobile devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    A mobile device is a computing device that has a small form factor such that it can easily be carried by a single individual; is designed to operate without a physical connection; possesses local, non-removable or removable data storage; and includes a self-contained power source. Mobile device functionality may also include voice communication capabilities, on-board sensors that allow the device to capture information, and/or built-in features for synchronizing local data with remote locations. Examples include smart phones and tablets. Mobile devices are typically associated with a single individual. The processing, storage, and transmission capability of the mobile device may be comparable to or merely a subset of notebook/desktop systems, depending on the nature and intended purpose of the device. Protection and control of mobile devices is behavior or policy-based and requires users to take physical action to protect and control such devices when outside of controlled areas. Controlled areas are spaces for which organizations provide physical or procedural controls to meet the requirements established for protecting information and systems.

    Due to the large variety of mobile devices with different characteristics and capabilities, organizational restrictions may vary for the different classes or types of such devices. Usage restrictions and specific implementation guidance for mobile devices include configuration management, device identification and authentication, implementation of mandatory protective software, scanning devices for malicious code, updating virus protection software, scanning for critical software updates and patches, conducting primary operating system (and possibly other resident software) integrity checks, and disabling unnecessary hardware.

    Usage restrictions and authorization to connect may vary among organizational systems. For example, the organization may authorize the connection of mobile devices to its network and impose a set of usage restrictions, while a system owner may withhold authorization for mobile device connection to specific applications or impose additional usage restrictions before allowing mobile device connections to a system. Adequate security for mobile devices goes beyond the requirements specified in [AC-19](#ac-19) . Many safeguards for mobile devices are reflected in other controls. [AC-20](#ac-20) addresses mobile devices that are not organization-controlled.
  GUIDANCE
  tag nist: ['AC-19']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control AC-19' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
