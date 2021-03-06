function singleJointParameterEstimation

r = RigidBodyManipulator('../urdf/atlas_minimal_contact.urdf');
shoulder = findJointInd(r,'l_arm_usy');

for i=1:getNumBodies(r)
  if i~=shoulder
    r = weldJoint(r,i);
  end
end

r = compile(r);
