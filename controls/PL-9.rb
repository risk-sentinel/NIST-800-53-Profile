control 'PL-9' do
  impact 0.5
  title 'Central Management'
  desc <<~DESC
    Centrally manage #{input('pl_09_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      PL-09 #{input('pl_09_odp')} are centrally managed.

    Assessment methods and objects:
      EXAMINE: Security and privacy planning policy; procedures addressing security and privacy plan development and implementation; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with security and privacy planning and plan implementation responsibilities; organizational personnel with responsibilities for planning/implementing central management of controls and related processes; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for the central management of controls and related processes; mechanisms supporting and/or implementing central management of controls and related processes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Central management refers to organization-wide management and implementation of selected controls and processes. This includes planning, implementing, assessing, authorizing, and monitoring the organization-defined, centrally managed controls and processes. As the central management of controls is generally associated with the concept of common (inherited) controls, such management promotes and facilitates standardization of control implementations and management and the judicious use of organizational resources. Centrally managed controls and processes may also meet independence requirements for assessments in support of initial and ongoing authorizations to operate and as part of organizational continuous monitoring.

    Automated tools (e.g., security information and event management tools or enterprise security monitoring and management tools) can improve the accuracy, consistency, and availability of information associated with centrally managed controls and processes. Automation can also provide data aggregation and data correlation capabilities; alerting mechanisms; and dashboards to support risk-based decision-making within the organization.

    As part of the control selection processes, organizations determine the controls that may be suitable for central management based on resources and capabilities. It is not always possible to centrally manage every aspect of a control. In such cases, the control can be treated as a hybrid control with the control managed and implemented centrally or at the system level. The controls and control enhancements that are candidates for full or partial central management include but are not limited to: [AC-2(1)](#ac-2.1), [AC-2(2)](#ac-2.2), [AC-2(3)](#ac-2.3), [AC-2(4)](#ac-2.4), [AC-4(all)](#ac-4), [AC-17(1)](#ac-17.1), [AC-17(2)](#ac-17.2), [AC-17(3)](#ac-17.3), [AC-17(9)](#ac-17.9), [AC-18(1)](#ac-18.1), [AC-18(3)](#ac-18.3), [AC-18(4)](#ac-18.4), [AC-18(5)](#ac-18.5), [AC-19(4)](#ac-19.4), [AC-22](#ac-22), [AC-23](#ac-23), [AT-2(1)](#at-2.1), [AT-2(2)](#at-2.2), [AT-3(1)](#at-3.1), [AT-3(2)](#at-3.2), [AT-3(3)](#at-3.3), [AT-4](#at-4), [AU-3](#au-3), [AU-6(1)](#au-6.1), [AU-6(3)](#au-6.3), [AU-6(5)](#au-6.5), [AU-6(6)](#au-6.6), [AU-6(9)](#au-6.9), [AU-7(1)](#au-7.1), [AU-7(2)](#au-7.2), [AU-11](#au-11), [AU-13](#au-13), [AU-16](#au-16), [CA-2(1)](#ca-2.1), [CA-2(2)](#ca-2.2), [CA-2(3)](#ca-2.3), [CA-3(1)](#ca-3.1), [CA-3(2)](#ca-3.2), [CA-3(3)](#ca-3.3), [CA-7(1)](#ca-7.1), [CA-9](#ca-9), [CM-2(2)](#cm-2.2), [CM-3(1)](#cm-3.1), [CM-3(4)](#cm-3.4), [CM-4](#cm-4), [CM-6](#cm-6), [CM-6(1)](#cm-6.1), [CM-7(2)](#cm-7.2), [CM-7(4)](#cm-7.4), [CM-7(5)](#cm-7.5), [CM-8(all)](#cm-8), [CM-9(1)](#cm-9.1), [CM-10](#cm-10), [CM-11](#cm-11), [CP-7(all)](#cp-7), [CP-8(all)](#cp-8), [SC-43](#sc-43), [SI-2](#si-2), [SI-3](#si-3), [SI-4(all)](#si-4), [SI-7](#si-7), [SI-8](#si-8).
  GUIDANCE
  tag nist: ['PL-9']
  tag rev: 'Rev_5'
  tag family: 'Planning'
  tag baseline: %w{PRIVACY}
  tag baseline_privacy: true
  tag odp: %w{pl_09_odp}

  describe 'NIST SP 800-53 Rev 5 control PL-9' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
