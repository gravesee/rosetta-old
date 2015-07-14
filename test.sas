if Fare <= 52.277100 then do;
  if Embarked in ('C','Q') then do;
    if Age <= 30.250000 then do;
      if SibSp <= 1.500000 then do;
        test_TREE_0001 = 14.000000;
      end; else
      if SibSp >  1.500000 then do;
        test_TREE_0001 = 15.000000;
      end;
    end; else
    if Age >  30.250000 then do;
      test_TREE_0001 = 9.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0001 = 10.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0001 = 11.000000;
    end;
  end;
end; else
if Fare >  52.277100 then do;
  if SibSp <= 5.500000 then do;
    if Age <= 63.500000 then do;
      test_TREE_0001 = 12.000000;
    end; else
    if Age >  63.500000 then do;
      test_TREE_0001 = 13.000000;
    end;
  end; else
  if SibSp >  5.500000 then do;
    test_TREE_0001 = 7.000000;
  end;
end;
if Pclass in ('1','2') then do;
  if Age <= 17.500000 then do;
    if Embarked in ('C') then do;
      test_TREE_0002 = 8.000000;
    end; else
    if Embarked not in ('C') then do;
      test_TREE_0002 = 9.000000;
    end;
  end; else
  if Age >  17.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0002 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0002 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if SibSp <= 2.500000 then do;
    if Age <= 7.500000 then do;
      test_TREE_0002 = 12.000000;
    end; else
    if Age >  7.500000 then do;
      test_TREE_0002 = 13.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if Fare <= 18.462500 then do;
      test_TREE_0002 = 14.000000;
    end; else
    if Fare >  18.462500 then do;
      test_TREE_0002 = 15.000000;
    end;
  end;
end;
if Embarked in ('','C') then do;
  if Fare <= 15.493750 then do;
    if Parch <= 0.500000 then do;
      test_TREE_0003 = 8.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0003 = 9.000000;
    end;
  end; else
  if Fare >  15.493750 then do;
    if Fare <= 53.216700 then do;
      test_TREE_0003 = 10.000000;
    end; else
    if Fare >  53.216700 then do;
      test_TREE_0003 = 11.000000;
    end;
  end;
end; else
if Embarked not in ('','C') then do;
  if Pclass in ('1','2') then do;
    if Age <= 53.500000 then do;
      test_TREE_0003 = 12.000000;
    end; else
    if Age >  53.500000 then do;
      test_TREE_0003 = 13.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Fare <= 10.825000 then do;
      test_TREE_0003 = 14.000000;
    end; else
    if Fare >  10.825000 then do;
      test_TREE_0003 = 15.000000;
    end;
  end;
end;
if Fare <= 52.277100 then do;
  if Pclass in ('1','2') then do;
    if Sex in ('female') then do;
      test_TREE_0004 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0004 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0004 = 10.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0004 = 11.000000;
    end;
  end;
end; else
if Fare >  52.277100 then do;
  if Pclass in ('1') then do;
    if Sex in ('female') then do;
      test_TREE_0004 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0004 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Fare <= 67.275000 then do;
      test_TREE_0004 = 14.000000;
    end; else
    if Fare >  67.275000 then do;
      test_TREE_0004 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Sex in ('female') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0005 = 8.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0005 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0005 = 10.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0005 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Fare <= 7.600000 then do;
    if Age <= 27.500000 then do;
      test_TREE_0005 = 12.000000;
    end; else
    if Age >  27.500000 then do;
      test_TREE_0005 = 13.000000;
    end;
  end; else
  if Fare >  7.600000 then do;
    if Embarked in ('C','Q') then do;
      test_TREE_0005 = 14.000000;
    end; else
    if Embarked not in ('C','Q') then do;
      test_TREE_0005 = 15.000000;
    end;
  end;
end;
if Fare <= 9.839600 then do;
  if Sex in ('female') then do;
    if Age <= 17.500000 then do;
      test_TREE_0006 = 8.000000;
    end; else
    if Age >  17.500000 then do;
      test_TREE_0006 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0006 = 10.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0006 = 11.000000;
    end;
  end;
end; else
if Fare >  9.839600 then do;
  if Sex in ('female') then do;
    if Age <= 12.500000 then do;
      test_TREE_0006 = 12.000000;
    end; else
    if Age >  12.500000 then do;
      test_TREE_0006 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0006 = 14.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0006 = 15.000000;
    end;
  end;
end;
if SibSp <= 2.500000 then do;
  if Fare <= 21.550000 then do;
    if Sex in ('female') then do;
      if Fare <= 14.129150 then do;
        test_TREE_0007 = 14.000000;
      end; else
      if Fare >  14.129150 then do;
        test_TREE_0007 = 15.000000;
      end;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0007 = 9.000000;
    end;
  end; else
  if Fare >  21.550000 then do;
    if Parch <= 2.500000 then do;
      test_TREE_0007 = 10.000000;
    end; else
    if Parch >  2.500000 then do;
      test_TREE_0007 = 11.000000;
    end;
  end;
end; else
if SibSp >  2.500000 then do;
  if Pclass in ('1') then do;
    test_TREE_0007 = 6.000000;
  end; else
  if Pclass not in ('1') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0007 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0007 = 13.000000;
    end;
  end;
end;
if Fare <= 10.481250 then do;
  if Embarked in ('Q') then do;
    if Fare <= 7.768750 then do;
      test_TREE_0008 = 8.000000;
    end; else
    if Fare >  7.768750 then do;
      test_TREE_0008 = 9.000000;
    end;
  end; else
  if Embarked not in ('Q') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0008 = 10.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0008 = 11.000000;
    end;
  end;
end; else
if Fare >  10.481250 then do;
  if Embarked in ('','C') then do;
    if Fare <= 15.147900 then do;
      test_TREE_0008 = 12.000000;
    end; else
    if Fare >  15.147900 then do;
      test_TREE_0008 = 13.000000;
    end;
  end; else
  if Embarked not in ('','C') then do;
    if Fare <= 77.622900 then do;
      test_TREE_0008 = 14.000000;
    end; else
    if Fare >  77.622900 then do;
      test_TREE_0008 = 15.000000;
    end;
  end;
end;
if Age <= 6.500000 then do;
  if Age <= 0.960000 then do;
    test_TREE_0009 = 4.000000;
  end; else
  if Age >  0.960000 then do;
    if Embarked in ('Q') then do;
      test_TREE_0009 = 8.000000;
    end; else
    if Embarked not in ('Q') then do;
      if SibSp <= 2.500000 then do;
        test_TREE_0009 = 14.000000;
      end; else
      if SibSp >  2.500000 then do;
        test_TREE_0009 = 15.000000;
      end;
    end;
  end;
end; else
if Age >  6.500000 then do;
  if Pclass in ('1','2') then do;
    if Sex <= 1.000000 then do;
      test_TREE_0009 = 10.000000;
    end; else
    if Sex >  1.000000 then do;
      test_TREE_0009 = 11.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Age <= 36.500000 then do;
      test_TREE_0009 = 12.000000;
    end; else
    if Age >  36.500000 then do;
      test_TREE_0009 = 13.000000;
    end;
  end;
end;
if Parch <= 0.500000 then do;
  if Age <= 26.500000 then do;
    if Pclass in ('1') then do;
      if Fare <= 79.025000 then do;
        test_TREE_0010 = 14.000000;
      end; else
      if Fare >  79.025000 then do;
        test_TREE_0010 = 15.000000;
      end;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0010 = 9.000000;
    end;
  end; else
  if Age >  26.500000 then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0010 = 10.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0010 = 11.000000;
    end;
  end;
end; else
if Parch >  0.500000 then do;
  if Embarked in ('Q') then do;
    test_TREE_0010 = 6.000000;
  end; else
  if Embarked not in ('Q') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0010 = 12.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0010 = 13.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Fare <= 48.202100 then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0011 = 8.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0011 = 9.000000;
    end;
  end; else
  if Fare >  48.202100 then do;
    if Parch <= 1.500000 then do;
      test_TREE_0011 = 10.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0011 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 13.000000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0011 = 12.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0011 = 13.000000;
    end;
  end; else
  if Age >  13.000000 then do;
    if Fare <= 26.143750 then do;
      test_TREE_0011 = 14.000000;
    end; else
    if Fare >  26.143750 then do;
      test_TREE_0011 = 15.000000;
    end;
  end;
end;
if Embarked in ('','C') then do;
  if Fare <= 29.850000 then do;
    if Fare <= 9.977100 then do;
      test_TREE_0012 = 8.000000;
    end; else
    if Fare >  9.977100 then do;
      test_TREE_0012 = 9.000000;
    end;
  end; else
  if Fare >  29.850000 then do;
    if Age <= 44.000000 then do;
      test_TREE_0012 = 10.000000;
    end; else
    if Age >  44.000000 then do;
      test_TREE_0012 = 11.000000;
    end;
  end;
end; else
if Embarked not in ('','C') then do;
  if Age <= 7.000000 then do;
    if SibSp <= 2.000000 then do;
      test_TREE_0012 = 12.000000;
    end; else
    if SibSp >  2.000000 then do;
      test_TREE_0012 = 13.000000;
    end;
  end; else
  if Age >  7.000000 then do;
    if Sex in ('female') then do;
      test_TREE_0012 = 14.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0012 = 15.000000;
    end;
  end;
end;
if Age <= 6.000000 then do;
  if Embarked in ('C') then do;
    test_TREE_0013 = 4.000000;
  end; else
  if Embarked not in ('C') then do;
    if Pclass <= 3.000000 then do;
      if Age <= 2.500000 then do;
        test_TREE_0013 = 14.000000;
      end; else
      if Age >  2.500000 then do;
        test_TREE_0013 = 15.000000;
      end;
    end; else
    if Pclass >  3.000000 then do;
      test_TREE_0013 = 9.000000;
    end;
  end;
end; else
if Age >  6.000000 then do;
  if Pclass in ('1','2') then do;
    if Parch in ('') then do;
      test_TREE_0013 = 10.000000;
    end; else
    if Parch not in ('') then do;
      test_TREE_0013 = 11.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Sex <= 1.000000 then do;
      test_TREE_0013 = 12.000000;
    end; else
    if Sex >  1.000000 then do;
      test_TREE_0013 = 13.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Fare <= 29.850000 then do;
    if Sex in ('female') then do;
      test_TREE_0014 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0014 = 9.000000;
    end;
  end; else
  if Fare >  29.850000 then do;
    if Embarked in ('Q') then do;
      test_TREE_0014 = 10.000000;
    end; else
    if Embarked not in ('Q') then do;
      test_TREE_0014 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Embarked in ('C','Q') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0014 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0014 = 13.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0014 = 14.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0014 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Pclass in ('1') then do;
      test_TREE_0015 = 8.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0015 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Fare <= 7.762500 then do;
      test_TREE_0015 = 10.000000;
    end; else
    if Fare >  7.762500 then do;
      test_TREE_0015 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Fare <= 26.268750 then do;
    if Pclass in ('1') then do;
      test_TREE_0015 = 12.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0015 = 13.000000;
    end;
  end; else
  if Fare >  26.268750 then do;
    if Fare <= 26.775000 then do;
      test_TREE_0015 = 14.000000;
    end; else
    if Fare >  26.775000 then do;
      test_TREE_0015 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Parch <= 2.500000 then do;
      test_TREE_0016 = 8.000000;
    end; else
    if Parch >  2.500000 then do;
      test_TREE_0016 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Age <= 38.500000 then do;
      test_TREE_0016 = 10.000000;
    end; else
    if Age >  38.500000 then do;
      test_TREE_0016 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 10.000000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0016 = 12.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0016 = 13.000000;
    end;
  end; else
  if Age >  10.000000 then do;
    if Pclass in ('1') then do;
      test_TREE_0016 = 14.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0016 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Age <= 17.500000 then do;
    if Fare <= 11.250000 then do;
      test_TREE_0017 = 8.000000;
    end; else
    if Fare >  11.250000 then do;
      test_TREE_0017 = 9.000000;
    end;
  end; else
  if Age >  17.500000 then do;
    if Age <= 63.500000 then do;
      test_TREE_0017 = 10.000000;
    end; else
    if Age >  63.500000 then do;
      test_TREE_0017 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Age <= 5.500000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0017 = 12.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0017 = 13.000000;
    end;
  end; else
  if Age >  5.500000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0017 = 14.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0017 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Parch <= 0.500000 then do;
    if Pclass in ('1') then do;
      test_TREE_0018 = 8.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0018 = 9.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Age <= 18.500000 then do;
      test_TREE_0018 = 10.000000;
    end; else
    if Age >  18.500000 then do;
      test_TREE_0018 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Age <= 9.500000 then do;
    if Age <= 0.875000 then do;
      test_TREE_0018 = 12.000000;
    end; else
    if Age >  0.875000 then do;
      test_TREE_0018 = 13.000000;
    end;
  end; else
  if Age >  9.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0018 = 14.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0018 = 15.000000;
    end;
  end;
end;
if Fare <= 9.839600 then do;
  if Embarked in ('Q') then do;
    if Parch <= 1.000000 then do;
      test_TREE_0019 = 8.000000;
    end; else
    if Parch >  1.000000 then do;
      test_TREE_0019 = 9.000000;
    end;
  end; else
  if Embarked not in ('Q') then do;
    if Fare <= 9.287500 then do;
      test_TREE_0019 = 10.000000;
    end; else
    if Fare >  9.287500 then do;
      test_TREE_0019 = 11.000000;
    end;
  end;
end; else
if Fare >  9.839600 then do;
  if SibSp <= 2.500000 then do;
    if Age <= 8.500000 then do;
      test_TREE_0019 = 12.000000;
    end; else
    if Age >  8.500000 then do;
      test_TREE_0019 = 13.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if Parch <= 1.500000 then do;
      test_TREE_0019 = 14.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0019 = 15.000000;
    end;
  end;
end;
if Age <= 55.250000 then do;
  if Fare <= 52.277100 then do;
    if Pclass in ('1','2') then do;
      if Sex <= 1.000000 then do;
        test_TREE_0020 = 14.000000;
      end; else
      if Sex >  1.000000 then do;
        test_TREE_0020 = 15.000000;
      end;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0020 = 9.000000;
    end;
  end; else
  if Fare >  52.277100 then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0020 = 10.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0020 = 11.000000;
    end;
  end;
end; else
if Age >  55.250000 then do;
  if Age <= 77.000000 then do;
    if Sex in ('female') then do;
      test_TREE_0020 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0020 = 13.000000;
    end;
  end; else
  if Age >  77.000000 then do;
    test_TREE_0020 = 7.000000;
  end;
end;
if Fare <= 10.825000 then do;
  if Embarked in ('Q') then do;
    if Sex in ('female') then do;
      test_TREE_0021 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0021 = 9.000000;
    end;
  end; else
  if Embarked not in ('Q') then do;
    if Fare <= 7.133350 then do;
      test_TREE_0021 = 10.000000;
    end; else
    if Fare >  7.133350 then do;
      test_TREE_0021 = 11.000000;
    end;
  end;
end; else
if Fare >  10.825000 then do;
  if Sex in ('female') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0021 = 12.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0021 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Embarked in ('C') then do;
      test_TREE_0021 = 14.000000;
    end; else
    if Embarked not in ('C') then do;
      test_TREE_0021 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Sex in ('female') then do;
    if Embarked in ('','C','Q') then do;
      test_TREE_0022 = 8.000000;
    end; else
    if Embarked not in ('','C','Q') then do;
      test_TREE_0022 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 17.500000 then do;
      test_TREE_0022 = 10.000000;
    end; else
    if Age >  17.500000 then do;
      test_TREE_0022 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Age <= 6.500000 then do;
    if Parch <= 1.500000 then do;
      test_TREE_0022 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0022 = 13.000000;
    end;
  end; else
  if Age >  6.500000 then do;
    if Fare <= 7.175000 then do;
      test_TREE_0022 = 14.000000;
    end; else
    if Fare >  7.175000 then do;
      test_TREE_0022 = 15.000000;
    end;
  end;
end;
if Fare <= 10.816650 then do;
  if Sex in ('female') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0023 = 8.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0023 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 7.910400 then do;
      test_TREE_0023 = 10.000000;
    end; else
    if Fare >  7.910400 then do;
      test_TREE_0023 = 11.000000;
    end;
  end;
end; else
if Fare >  10.816650 then do;
  if Pclass in ('1') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0023 = 12.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0023 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0023 = 14.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0023 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Embarked in ('','C','Q') then do;
    if Fare <= 14.852050 then do;
      test_TREE_0024 = 8.000000;
    end; else
    if Fare >  14.852050 then do;
      test_TREE_0024 = 9.000000;
    end;
  end; else
  if Embarked not in ('','C','Q') then do;
    if Pclass in ('1','2') then do;
      test_TREE_0024 = 10.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0024 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Parch <= 0.500000 then do;
    if Pclass in ('1') then do;
      test_TREE_0024 = 12.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0024 = 13.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Age <= 8.500000 then do;
      test_TREE_0024 = 14.000000;
    end; else
    if Age >  8.500000 then do;
      test_TREE_0024 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Age <= 2.500000 then do;
      test_TREE_0025 = 8.000000;
    end; else
    if Age >  2.500000 then do;
      test_TREE_0025 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Embarked in ('C','Q') then do;
      test_TREE_0025 = 10.000000;
    end; else
    if Embarked not in ('C','Q') then do;
      test_TREE_0025 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Pclass in ('1') then do;
    if Fare <= 387.664600 then do;
      test_TREE_0025 = 12.000000;
    end; else
    if Fare >  387.664600 then do;
      test_TREE_0025 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0025 = 14.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0025 = 15.000000;
    end;
  end;
end;
if Age <= 5.500000 then do;
  if Pclass in ('2') then do;
    test_TREE_0026 = 4.000000;
  end; else
  if Pclass not in ('2') then do;
    if Fare in ('NA','NA') then do;
      test_TREE_0026 = 8.000000;
    end; else
    if Fare not in ('NA','NA') then do;
      if SibSp in ('') then do;
        test_TREE_0026 = 14.000000;
      end; else
      if SibSp not in ('') then do;
        test_TREE_0026 = 15.000000;
      end;
    end;
  end;
end; else
if Age >  5.500000 then do;
  if Fare <= 48.300000 then do;
    if Sex <= 1.000000 then do;
      test_TREE_0026 = 10.000000;
    end; else
    if Sex >  1.000000 then do;
      test_TREE_0026 = 11.000000;
    end;
  end; else
  if Fare >  48.300000 then do;
    if Parch <= 0.500000 then do;
      test_TREE_0026 = 12.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0026 = 13.000000;
    end;
  end;
end;
if Fare <= 10.825000 then do;
  if Embarked in ('C','Q') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0027 = 8.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0027 = 9.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0027 = 10.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0027 = 11.000000;
    end;
  end;
end; else
if Fare >  10.825000 then do;
  if SibSp <= 2.500000 then do;
    if Parch <= 3.500000 then do;
      test_TREE_0027 = 12.000000;
    end; else
    if Parch >  3.500000 then do;
      test_TREE_0027 = 13.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if Parch <= 0.500000 then do;
      test_TREE_0027 = 14.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0027 = 15.000000;
    end;
  end;
end;
if Parch <= 0.500000 then do;
  if Embarked in ('C') then do;
    if Pclass in ('1','2') then do;
      test_TREE_0028 = 8.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0028 = 9.000000;
    end;
  end; else
  if Embarked not in ('C') then do;
    if Sex in ('female') then do;
      test_TREE_0028 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0028 = 11.000000;
    end;
  end;
end; else
if Parch >  0.500000 then do;
  if Age <= 6.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0028 = 12.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0028 = 13.000000;
    end;
  end; else
  if Age >  6.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0028 = 14.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0028 = 15.000000;
    end;
  end;
end;
if SibSp <= 3.500000 then do;
  if Sex in ('female') then do;
    if SibSp <= 2.500000 then do;
      if Parch <= 3.500000 then do;
        test_TREE_0029 = 14.000000;
      end; else
      if Parch >  3.500000 then do;
        test_TREE_0029 = 15.000000;
      end;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0029 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 13.500000 then do;
      test_TREE_0029 = 10.000000;
    end; else
    if Age >  13.500000 then do;
      test_TREE_0029 = 11.000000;
    end;
  end;
end; else
if SibSp >  3.500000 then do;
  if Parch <= 1.500000 then do;
    test_TREE_0029 = 6.000000;
  end; else
  if Parch >  1.500000 then do;
    if SibSp <= 4.500000 then do;
      test_TREE_0029 = 12.000000;
    end; else
    if SibSp >  4.500000 then do;
      test_TREE_0029 = 13.000000;
    end;
  end;
end;
if Parch <= 0.500000 then do;
  if SibSp <= 0.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0030 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      if Pclass <= 1.000000 then do;
        test_TREE_0030 = 14.000000;
      end; else
      if Pclass >  1.000000 then do;
        test_TREE_0030 = 15.000000;
      end;
    end;
  end; else
  if SibSp >  0.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0030 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0030 = 11.000000;
    end;
  end;
end; else
if Parch >  0.500000 then do;
  if Embarked in ('Q') then do;
    test_TREE_0030 = 6.000000;
  end; else
  if Embarked not in ('Q') then do;
    if Age in ('NA','NA','NA','NA','NA') then do;
      test_TREE_0030 = 12.000000;
    end; else
    if Age not in ('NA','NA','NA','NA','NA') then do;
      test_TREE_0030 = 13.000000;
    end;
  end;
end;
if Fare <= 10.481250 then do;
  if Sex in ('female') then do;
    if Embarked in ('C','Q') then do;
      test_TREE_0031 = 8.000000;
    end; else
    if Embarked not in ('C','Q') then do;
      test_TREE_0031 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Embarked in ('Q') then do;
      test_TREE_0031 = 10.000000;
    end; else
    if Embarked not in ('Q') then do;
      test_TREE_0031 = 11.000000;
    end;
  end;
end; else
if Fare >  10.481250 then do;
  if Pclass in ('1') then do;
    if Age <= 43.500000 then do;
      test_TREE_0031 = 12.000000;
    end; else
    if Age >  43.500000 then do;
      test_TREE_0031 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0031 = 14.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0031 = 15.000000;
    end;
  end;
end;
if Fare <= 15.172900 then do;
  if Sex in ('female') then do;
    if Pclass in ('2') then do;
      test_TREE_0032 = 8.000000;
    end; else
    if Pclass not in ('2') then do;
      test_TREE_0032 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Embarked in ('C','Q') then do;
      test_TREE_0032 = 10.000000;
    end; else
    if Embarked not in ('C','Q') then do;
      test_TREE_0032 = 11.000000;
    end;
  end;
end; else
if Fare >  15.172900 then do;
  if Embarked in ('','C') then do;
    if Sex in ('female') then do;
      test_TREE_0032 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0032 = 13.000000;
    end;
  end; else
  if Embarked not in ('','C') then do;
    if Age <= 59.000000 then do;
      test_TREE_0032 = 14.000000;
    end; else
    if Age >  59.000000 then do;
      test_TREE_0032 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Fare <= 13.429150 then do;
      test_TREE_0033 = 8.000000;
    end; else
    if Fare >  13.429150 then do;
      test_TREE_0033 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Age <= 7.000000 then do;
      test_TREE_0033 = 10.000000;
    end; else
    if Age >  7.000000 then do;
      test_TREE_0033 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 6.500000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0033 = 12.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0033 = 13.000000;
    end;
  end; else
  if Age >  6.500000 then do;
    if Age <= 53.000000 then do;
      test_TREE_0033 = 14.000000;
    end; else
    if Age >  53.000000 then do;
      test_TREE_0033 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Pclass in ('1') then do;
    if Sex in ('female') then do;
      test_TREE_0034 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0034 = 9.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Sex in ('female') then do;
      test_TREE_0034 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0034 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Embarked in ('C','Q') then do;
    if Sex in ('female') then do;
      test_TREE_0034 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0034 = 13.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0034 = 14.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0034 = 15.000000;
    end;
  end;
end;
if Age <= 5.500000 then do;
  if SibSp <= 2.500000 then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0035 = 8.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0035 = 9.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if SibSp <= 3.500000 then do;
      test_TREE_0035 = 10.000000;
    end; else
    if SibSp >  3.500000 then do;
      test_TREE_0035 = 11.000000;
    end;
  end;
end; else
if Age >  5.500000 then do;
  if Pclass in ('1') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0035 = 12.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0035 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Pclass in ('2') then do;
      test_TREE_0035 = 14.000000;
    end; else
    if Pclass not in ('2') then do;
      test_TREE_0035 = 15.000000;
    end;
  end;
end;
if SibSp <= 0.500000 then do;
  if Parch <= 0.500000 then do;
    if Embarked in ('') then do;
      test_TREE_0036 = 8.000000;
    end; else
    if Embarked not in ('') then do;
      test_TREE_0036 = 9.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Fare <= 13.935450 then do;
      test_TREE_0036 = 10.000000;
    end; else
    if Fare >  13.935450 then do;
      test_TREE_0036 = 11.000000;
    end;
  end;
end; else
if SibSp >  0.500000 then do;
  if Sex in ('female') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0036 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0036 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 13.000000 then do;
      test_TREE_0036 = 14.000000;
    end; else
    if Age >  13.000000 then do;
      test_TREE_0036 = 15.000000;
    end;
  end;
end;
if Fare <= 10.335400 then do;
  if Embarked in ('C','Q') then do;
    if Sex in ('female') then do;
      test_TREE_0037 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0037 = 9.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if Fare <= 7.535400 then do;
      test_TREE_0037 = 10.000000;
    end; else
    if Fare >  7.535400 then do;
      test_TREE_0037 = 11.000000;
    end;
  end;
end; else
if Fare >  10.335400 then do;
  if Pclass in ('1') then do;
    if Age <= 48.500000 then do;
      test_TREE_0037 = 12.000000;
    end; else
    if Age >  48.500000 then do;
      test_TREE_0037 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Sex in ('female') then do;
      test_TREE_0037 = 14.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0037 = 15.000000;
    end;
  end;
end;
if Embarked in ('','C','Q') then do;
  if Age <= 63.500000 then do;
    if Sex in ('female') then do;
      if Fare in ('NA','NA','NA') then do;
        test_TREE_0038 = 14.000000;
      end; else
      if Fare not in ('NA','NA','NA') then do;
        test_TREE_0038 = 15.000000;
      end;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0038 = 9.000000;
    end;
  end; else
  if Age >  63.500000 then do;
    test_TREE_0038 = 5.000000;
  end;
end; else
if Embarked not in ('','C','Q') then do;
  if Pclass in ('1','2') then do;
    if Fare <= 14.250000 then do;
      test_TREE_0038 = 10.000000;
    end; else
    if Fare >  14.250000 then do;
      test_TREE_0038 = 11.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0038 = 12.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0038 = 13.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Fare <= 52.277100 then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0039 = 8.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0039 = 9.000000;
    end;
  end; else
  if Fare >  52.277100 then do;
    if Fare <= 55.670850 then do;
      test_TREE_0039 = 10.000000;
    end; else
    if Fare >  55.670850 then do;
      test_TREE_0039 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Fare <= 22.441650 then do;
    if Sex in ('female') then do;
      test_TREE_0039 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0039 = 13.000000;
    end;
  end; else
  if Fare >  22.441650 then do;
    if Sex in ('female') then do;
      test_TREE_0039 = 14.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0039 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Sex in ('female') then do;
    if Embarked in ('','C','Q') then do;
      test_TREE_0040 = 8.000000;
    end; else
    if Embarked not in ('','C','Q') then do;
      test_TREE_0040 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 12.000000 then do;
      test_TREE_0040 = 10.000000;
    end; else
    if Age >  12.000000 then do;
      test_TREE_0040 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Age <= 5.500000 then do;
    if SibSp <= 3.000000 then do;
      test_TREE_0040 = 12.000000;
    end; else
    if SibSp >  3.000000 then do;
      test_TREE_0040 = 13.000000;
    end;
  end; else
  if Age >  5.500000 then do;
    if Embarked in ('Q') then do;
      test_TREE_0040 = 14.000000;
    end; else
    if Embarked not in ('Q') then do;
      test_TREE_0040 = 15.000000;
    end;
  end;
end;
if Fare <= 15.372900 then do;
  if Age <= 16.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0041 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0041 = 9.000000;
    end;
  end; else
  if Age >  16.500000 then do;
    if Pclass in ('2') then do;
      test_TREE_0041 = 10.000000;
    end; else
    if Pclass not in ('2') then do;
      test_TREE_0041 = 11.000000;
    end;
  end;
end; else
if Fare >  15.372900 then do;
  if Pclass in ('1','2') then do;
    if Parch <= 3.500000 then do;
      test_TREE_0041 = 12.000000;
    end; else
    if Parch >  3.500000 then do;
      test_TREE_0041 = 13.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Fare <= 23.350000 then do;
      test_TREE_0041 = 14.000000;
    end; else
    if Fare >  23.350000 then do;
      test_TREE_0041 = 15.000000;
    end;
  end;
end;
if Fare <= 15.372900 then do;
  if Sex in ('female') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0042 = 8.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0042 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0042 = 10.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0042 = 11.000000;
    end;
  end;
end; else
if Fare >  15.372900 then do;
  if Fare <= 74.375000 then do;
    if Parch <= 1.500000 then do;
      test_TREE_0042 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0042 = 13.000000;
    end;
  end; else
  if Fare >  74.375000 then do;
    if Age <= 28.500000 then do;
      test_TREE_0042 = 14.000000;
    end; else
    if Age >  28.500000 then do;
      test_TREE_0042 = 15.000000;
    end;
  end;
end;
if Fare <= 77.622900 then do;
  if Embarked in ('C','Q') then do;
    if SibSp <= 3.000000 then do;
      test_TREE_0043 = 8.000000;
    end; else
    if SibSp >  3.000000 then do;
      test_TREE_0043 = 9.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if Age <= 8.500000 then do;
      test_TREE_0043 = 10.000000;
    end; else
    if Age >  8.500000 then do;
      test_TREE_0043 = 11.000000;
    end;
  end;
end; else
if Fare >  77.622900 then do;
  if Sex in ('female') then do;
    if Embarked in ('','C','Q') then do;
      test_TREE_0043 = 12.000000;
    end; else
    if Embarked not in ('','C','Q') then do;
      test_TREE_0043 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 134.641650 then do;
      test_TREE_0043 = 14.000000;
    end; else
    if Fare >  134.641650 then do;
      test_TREE_0043 = 15.000000;
    end;
  end;
end;
if Parch <= 0.500000 then do;
  if Age <= 17.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0044 = 8.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0044 = 9.000000;
    end;
  end; else
  if Age >  17.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0044 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0044 = 11.000000;
    end;
  end;
end; else
if Parch >  0.500000 then do;
  if Sex in ('female') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0044 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0044 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Parch <= 3.000000 then do;
      test_TREE_0044 = 14.000000;
    end; else
    if Parch >  3.000000 then do;
      test_TREE_0044 = 15.000000;
    end;
  end;
end;
if Fare <= 10.481250 then do;
  if Sex in ('female') then do;
    if Embarked in ('C','Q') then do;
      test_TREE_0045 = 8.000000;
    end; else
    if Embarked not in ('C','Q') then do;
      test_TREE_0045 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 31.500000 then do;
      test_TREE_0045 = 10.000000;
    end; else
    if Age >  31.500000 then do;
      test_TREE_0045 = 11.000000;
    end;
  end;
end; else
if Fare >  10.481250 then do;
  if Sex in ('female') then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0045 = 12.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0045 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 52.277100 then do;
      test_TREE_0045 = 14.000000;
    end; else
    if Fare >  52.277100 then do;
      test_TREE_0045 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Sex in ('female') then do;
    if Embarked in ('','C','Q') then do;
      test_TREE_0046 = 8.000000;
    end; else
    if Embarked not in ('','C','Q') then do;
      test_TREE_0046 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 13.500000 then do;
      test_TREE_0046 = 10.000000;
    end; else
    if Age >  13.500000 then do;
      test_TREE_0046 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Sex in ('female') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0046 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0046 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 1.500000 then do;
      test_TREE_0046 = 14.000000;
    end; else
    if Age >  1.500000 then do;
      test_TREE_0046 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Sex in ('female') then do;
    if Embarked in ('','C','Q') then do;
      if Age in ('0','NA','NA','NA','NA') then do;
        test_TREE_0047 = 14.000000;
      end; else
      if Age not in ('0','NA','NA','NA','NA') then do;
        test_TREE_0047 = 15.000000;
      end;
    end; else
    if Embarked not in ('','C','Q') then do;
      test_TREE_0047 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 26.143750 then do;
      test_TREE_0047 = 10.000000;
    end; else
    if Fare >  26.143750 then do;
      test_TREE_0047 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if SibSp <= 4.500000 then do;
    if Age <= 6.500000 then do;
      test_TREE_0047 = 12.000000;
    end; else
    if Age >  6.500000 then do;
      test_TREE_0047 = 13.000000;
    end;
  end; else
  if SibSp >  4.500000 then do;
    test_TREE_0047 = 7.000000;
  end;
end;
if Fare <= 75.114600 then do;
  if Fare <= 9.543750 then do;
    if Sex in ('female') then do;
      test_TREE_0048 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0048 = 9.000000;
    end;
  end; else
  if Fare >  9.543750 then do;
    if Age <= 6.500000 then do;
      test_TREE_0048 = 10.000000;
    end; else
    if Age >  6.500000 then do;
      test_TREE_0048 = 11.000000;
    end;
  end;
end; else
if Fare >  75.114600 then do;
  if Fare <= 79.825000 then do;
    if Age <= 23.500000 then do;
      test_TREE_0048 = 12.000000;
    end; else
    if Age >  23.500000 then do;
      test_TREE_0048 = 13.000000;
    end;
  end; else
  if Fare >  79.825000 then do;
    if Age <= 43.000000 then do;
      test_TREE_0048 = 14.000000;
    end; else
    if Age >  43.000000 then do;
      test_TREE_0048 = 15.000000;
    end;
  end;
end;
if SibSp <= 2.500000 then do;
  if Sex in ('female') then do;
    if Parch <= 3.500000 then do;
      if Fare <= 10.481250 then do;
        test_TREE_0049 = 12.000000;
      end; else
      if Fare >  10.481250 then do;
        test_TREE_0049 = 13.000000;
      end;
    end; else
    if Parch >  3.500000 then do;
      if Age in ('NA','NA','NA') then do;
        test_TREE_0049 = 14.000000;
      end; else
      if Age not in ('NA','NA','NA') then do;
        test_TREE_0049 = 15.000000;
      end;
    end;
  end; else
  if Sex not in ('female') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0049 = 10.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0049 = 11.000000;
    end;
  end;
end; else
if SibSp >  2.500000 then do;
  if Fare <= 18.462500 then do;
    test_TREE_0049 = 6.000000;
  end; else
  if Fare >  18.462500 then do;
    test_TREE_0049 = 7.000000;
  end;
end;
if Sex in ('female') then do;
  if Fare <= 49.189600 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0050 = 8.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0050 = 9.000000;
    end;
  end; else
  if Fare >  49.189600 then do;
    if Fare <= 70.275000 then do;
      test_TREE_0050 = 10.000000;
    end; else
    if Fare >  70.275000 then do;
      test_TREE_0050 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Embarked in ('C') then do;
    if Pclass in ('1') then do;
      test_TREE_0050 = 12.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0050 = 13.000000;
    end;
  end; else
  if Embarked not in ('C') then do;
    if Fare <= 26.268750 then do;
      test_TREE_0050 = 14.000000;
    end; else
    if Fare >  26.268750 then do;
      test_TREE_0050 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Fare <= 48.200000 then do;
    if Embarked in ('C','Q') then do;
      test_TREE_0051 = 8.000000;
    end; else
    if Embarked not in ('C','Q') then do;
      test_TREE_0051 = 9.000000;
    end;
  end; else
  if Fare >  48.200000 then do;
    if SibSp <= 5.000000 then do;
      test_TREE_0051 = 10.000000;
    end; else
    if SibSp >  5.000000 then do;
      test_TREE_0051 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 10.000000 then do;
    if Parch <= 1.500000 then do;
      test_TREE_0051 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0051 = 13.000000;
    end;
  end; else
  if Age >  10.000000 then do;
    if Pclass in ('1') then do;
      test_TREE_0051 = 14.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0051 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Sex in ('female') then do;
    if Parch <= 1.500000 then do;
      if Age in ('NA','NA','NA') then do;
        test_TREE_0052 = 14.000000;
      end; else
      if Age not in ('NA','NA','NA') then do;
        test_TREE_0052 = 15.000000;
      end;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0052 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 17.500000 then do;
      test_TREE_0052 = 10.000000;
    end; else
    if Age >  17.500000 then do;
      test_TREE_0052 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if SibSp <= 4.500000 then do;
    if Fare <= 48.091650 then do;
      test_TREE_0052 = 12.000000;
    end; else
    if Fare >  48.091650 then do;
      test_TREE_0052 = 13.000000;
    end;
  end; else
  if SibSp >  4.500000 then do;
    test_TREE_0052 = 7.000000;
  end;
end;
if Sex in ('female') then do;
  if SibSp <= 2.500000 then do;
    if Embarked in ('','C','Q') then do;
      test_TREE_0053 = 8.000000;
    end; else
    if Embarked not in ('','C','Q') then do;
      test_TREE_0053 = 9.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if Pclass in ('1') then do;
      test_TREE_0053 = 10.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0053 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 5.500000 then do;
    if Fare <= 60.772900 then do;
      test_TREE_0053 = 12.000000;
    end; else
    if Fare >  60.772900 then do;
      test_TREE_0053 = 13.000000;
    end;
  end; else
  if Age >  5.500000 then do;
    if Fare <= 26.268750 then do;
      test_TREE_0053 = 14.000000;
    end; else
    if Fare >  26.268750 then do;
      test_TREE_0053 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Parch <= 3.500000 then do;
    if SibSp <= 2.500000 then do;
      if Age in ('NA') then do;
        test_TREE_0054 = 14.000000;
      end; else
      if Age not in ('NA') then do;
        test_TREE_0054 = 15.000000;
      end;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0054 = 9.000000;
    end;
  end; else
  if Parch >  3.500000 then do;
    test_TREE_0054 = 5.000000;
  end;
end; else
if Sex not in ('female') then do;
  if Pclass in ('1') then do;
    if Age <= 53.000000 then do;
      test_TREE_0054 = 10.000000;
    end; else
    if Age >  53.000000 then do;
      test_TREE_0054 = 11.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Age <= 6.500000 then do;
      test_TREE_0054 = 12.000000;
    end; else
    if Age >  6.500000 then do;
      test_TREE_0054 = 13.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Fare <= 13.645850 then do;
    if Age <= 50.500000 then do;
      test_TREE_0055 = 8.000000;
    end; else
    if Age >  50.500000 then do;
      test_TREE_0055 = 9.000000;
    end;
  end; else
  if Fare >  13.645850 then do;
    if Sex in ('female') then do;
      test_TREE_0055 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0055 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Embarked in ('C','Q') then do;
    if Sex in ('female') then do;
      test_TREE_0055 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0055 = 13.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if Sex in ('female') then do;
      test_TREE_0055 = 14.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0055 = 15.000000;
    end;
  end;
end;
if Fare <= 15.172900 then do;
  if Sex in ('female') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0056 = 8.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0056 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0056 = 10.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0056 = 11.000000;
    end;
  end;
end; else
if Fare >  15.172900 then do;
  if Sex in ('female') then do;
    if Fare <= 70.416650 then do;
      test_TREE_0056 = 12.000000;
    end; else
    if Fare >  70.416650 then do;
      test_TREE_0056 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 3.500000 then do;
      test_TREE_0056 = 14.000000;
    end; else
    if Age >  3.500000 then do;
      test_TREE_0056 = 15.000000;
    end;
  end;
end;
if Fare <= 10.825000 then do;
  if Sex in ('female') then do;
    if Fare <= 8.083350 then do;
      test_TREE_0057 = 8.000000;
    end; else
    if Fare >  8.083350 then do;
      test_TREE_0057 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0057 = 10.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0057 = 11.000000;
    end;
  end;
end; else
if Fare >  10.825000 then do;
  if Sex in ('female') then do;
    if Pclass in ('1','2') then do;
      test_TREE_0057 = 12.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0057 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 26.268750 then do;
      test_TREE_0057 = 14.000000;
    end; else
    if Fare >  26.268750 then do;
      test_TREE_0057 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if SibSp <= 2.500000 then do;
    if Age <= 31.500000 then do;
      test_TREE_0058 = 8.000000;
    end; else
    if Age >  31.500000 then do;
      test_TREE_0058 = 9.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if SibSp <= 3.500000 then do;
      test_TREE_0058 = 10.000000;
    end; else
    if SibSp >  3.500000 then do;
      test_TREE_0058 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 6.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0058 = 12.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0058 = 13.000000;
    end;
  end; else
  if Age >  6.500000 then do;
    if Pclass in ('1') then do;
      test_TREE_0058 = 14.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0058 = 15.000000;
    end;
  end;
end;
if Fare <= 74.375000 then do;
  if Embarked in ('C','Q') then do;
    if Age <= 55.000000 then do;
      test_TREE_0059 = 8.000000;
    end; else
    if Age >  55.000000 then do;
      test_TREE_0059 = 9.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if Pclass in ('1','2') then do;
      test_TREE_0059 = 10.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0059 = 11.000000;
    end;
  end;
end; else
if Fare >  74.375000 then do;
  if Sex in ('female') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0059 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0059 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if SibSp <= 2.000000 then do;
      test_TREE_0059 = 14.000000;
    end; else
    if SibSp >  2.000000 then do;
      test_TREE_0059 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Fare <= 149.035400 then do;
      if Age in ('NA','NA','NA') then do;
        test_TREE_0060 = 14.000000;
      end; else
      if Age not in ('NA','NA','NA') then do;
        test_TREE_0060 = 15.000000;
      end;
    end; else
    if Fare >  149.035400 then do;
      test_TREE_0060 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    test_TREE_0060 = 5.000000;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 5.500000 then do;
    if SibSp <= 2.000000 then do;
      test_TREE_0060 = 10.000000;
    end; else
    if SibSp >  2.000000 then do;
      test_TREE_0060 = 11.000000;
    end;
  end; else
  if Age >  5.500000 then do;
    if Fare <= 26.268750 then do;
      test_TREE_0060 = 12.000000;
    end; else
    if Fare >  26.268750 then do;
      test_TREE_0060 = 13.000000;
    end;
  end;
end;
if Age <= 8.500000 then do;
  if Fare <= 27.825000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0061 = 8.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0061 = 9.000000;
    end;
  end; else
  if Fare >  27.825000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0061 = 10.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0061 = 11.000000;
    end;
  end;
end; else
if Age >  8.500000 then do;
  if Parch <= 0.500000 then do;
    if Pclass in ('1') then do;
      test_TREE_0061 = 12.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0061 = 13.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0061 = 14.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0061 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if SibSp <= 1.500000 then do;
    if Parch <= 3.500000 then do;
      test_TREE_0062 = 8.000000;
    end; else
    if Parch >  3.500000 then do;
      test_TREE_0062 = 9.000000;
    end;
  end; else
  if SibSp >  1.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0062 = 10.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0062 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Fare <= 10.816650 then do;
    if Fare <= 7.987500 then do;
      test_TREE_0062 = 12.000000;
    end; else
    if Fare >  7.987500 then do;
      test_TREE_0062 = 13.000000;
    end;
  end; else
  if Fare >  10.816650 then do;
    if Age <= 6.500000 then do;
      test_TREE_0062 = 14.000000;
    end; else
    if Age >  6.500000 then do;
      test_TREE_0062 = 15.000000;
    end;
  end;
end;
if Fare <= 10.481250 then do;
  if SibSp <= 3.000000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0063 = 8.000000;
    end; else
    if Pclass not in ('1','2') then do;
      if Sex <= 1.000000 then do;
        test_TREE_0063 = 14.000000;
      end; else
      if Sex >  1.000000 then do;
        test_TREE_0063 = 15.000000;
      end;
    end;
  end; else
  if SibSp >  3.000000 then do;
    test_TREE_0063 = 5.000000;
  end;
end; else
if Fare >  10.481250 then do;
  if SibSp <= 2.500000 then do;
    if Sex <= 1.000000 then do;
      test_TREE_0063 = 10.000000;
    end; else
    if Sex >  1.000000 then do;
      test_TREE_0063 = 11.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if Parch in ('') then do;
      test_TREE_0063 = 12.000000;
    end; else
    if Parch not in ('') then do;
      test_TREE_0063 = 13.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Pclass in ('1') then do;
      test_TREE_0064 = 8.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0064 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0064 = 10.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0064 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Pclass in ('1') then do;
    if SibSp <= 2.000000 then do;
      test_TREE_0064 = 12.000000;
    end; else
    if SibSp >  2.000000 then do;
      test_TREE_0064 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0064 = 14.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0064 = 15.000000;
    end;
  end;
end;
if Parch <= 0.500000 then do;
  if Pclass in ('1','2') then do;
    if Sex in ('female') then do;
      test_TREE_0065 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0065 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Age <= 16.500000 then do;
      test_TREE_0065 = 10.000000;
    end; else
    if Age >  16.500000 then do;
      test_TREE_0065 = 11.000000;
    end;
  end;
end; else
if Parch >  0.500000 then do;
  if Pclass in ('1','2') then do;
    if Age <= 18.500000 then do;
      test_TREE_0065 = 12.000000;
    end; else
    if Age >  18.500000 then do;
      test_TREE_0065 = 13.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0065 = 14.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0065 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Age <= 2.500000 then do;
      test_TREE_0066 = 8.000000;
    end; else
    if Age >  2.500000 then do;
      test_TREE_0066 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Embarked in ('Q') then do;
      test_TREE_0066 = 10.000000;
    end; else
    if Embarked not in ('Q') then do;
      test_TREE_0066 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 9.500000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0066 = 12.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0066 = 13.000000;
    end;
  end; else
  if Age >  9.500000 then do;
    if Fare <= 26.268750 then do;
      test_TREE_0066 = 14.000000;
    end; else
    if Fare >  26.268750 then do;
      test_TREE_0066 = 15.000000;
    end;
  end;
end;
if Pclass in ('1') then do;
  if Sex in ('female') then do;
    if Age <= 9.000000 then do;
      test_TREE_0067 = 8.000000;
    end; else
    if Age >  9.000000 then do;
      test_TREE_0067 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0067 = 10.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0067 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1') then do;
  if Fare <= 15.372900 then do;
    if Age <= 7.500000 then do;
      test_TREE_0067 = 12.000000;
    end; else
    if Age >  7.500000 then do;
      test_TREE_0067 = 13.000000;
    end;
  end; else
  if Fare >  15.372900 then do;
    if Age <= 1.500000 then do;
      test_TREE_0067 = 14.000000;
    end; else
    if Age >  1.500000 then do;
      test_TREE_0067 = 15.000000;
    end;
  end;
end;
if SibSp <= 3.500000 then do;
  if Parch <= 0.500000 then do;
    if Sex in ('female') then do;
      if Pclass <= 3.000000 then do;
        test_TREE_0068 = 14.000000;
      end; else
      if Pclass >  3.000000 then do;
        test_TREE_0068 = 15.000000;
      end;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0068 = 9.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Age <= 24.500000 then do;
      test_TREE_0068 = 10.000000;
    end; else
    if Age >  24.500000 then do;
      test_TREE_0068 = 11.000000;
    end;
  end;
end; else
if SibSp >  3.500000 then do;
  if Age <= 3.500000 then do;
    if Age <= 2.500000 then do;
      test_TREE_0068 = 12.000000;
    end; else
    if Age >  2.500000 then do;
      test_TREE_0068 = 13.000000;
    end;
  end; else
  if Age >  3.500000 then do;
    test_TREE_0068 = 7.000000;
  end;
end;
if Pclass in ('1','2') then do;
  if Age <= 17.500000 then do;
    test_TREE_0069 = 4.000000;
  end; else
  if Age >  17.500000 then do;
    if Sex in ('female') then do;
      if Pclass in ('1') then do;
        test_TREE_0069 = 14.000000;
      end; else
      if Pclass not in ('1') then do;
        test_TREE_0069 = 15.000000;
      end;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0069 = 9.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Age <= 18.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0069 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0069 = 11.000000;
    end;
  end; else
  if Age >  18.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0069 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0069 = 13.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Age <= 2.500000 then do;
      test_TREE_0070 = 8.000000;
    end; else
    if Age >  2.500000 then do;
      test_TREE_0070 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Embarked in ('C','Q') then do;
      test_TREE_0070 = 10.000000;
    end; else
    if Embarked not in ('C','Q') then do;
      test_TREE_0070 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Parch <= 0.500000 then do;
    if Fare <= 26.143750 then do;
      test_TREE_0070 = 12.000000;
    end; else
    if Fare >  26.143750 then do;
      test_TREE_0070 = 13.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0070 = 14.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0070 = 15.000000;
    end;
  end;
end;
if Fare <= 10.481250 then do;
  if Embarked in ('C','Q') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0071 = 8.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0071 = 9.000000;
    end;
  end; else
  if Embarked not in ('C','Q') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0071 = 10.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0071 = 11.000000;
    end;
  end;
end; else
if Fare >  10.481250 then do;
  if SibSp <= 2.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0071 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0071 = 13.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if Age <= 29.000000 then do;
      test_TREE_0071 = 14.000000;
    end; else
    if Age >  29.000000 then do;
      test_TREE_0071 = 15.000000;
    end;
  end;
end;
if Age <= 1.500000 then do;
  if Fare <= 42.950000 then do;
    test_TREE_0072 = 4.000000;
  end; else
  if Fare >  42.950000 then do;
    test_TREE_0072 = 5.000000;
  end;
end; else
if Age >  1.500000 then do;
  if Sex in ('female') then do;
    if Parch in ('NA') then do;
      if Embarked <= 3.000000 then do;
        test_TREE_0072 = 12.000000;
      end; else
      if Embarked >  3.000000 then do;
        test_TREE_0072 = 13.000000;
      end;
    end; else
    if Parch not in ('NA') then do;
      test_TREE_0072 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Embarked <= 2.000000 then do;
      if Age in ('NA','NA','NA') then do;
        test_TREE_0072 = 14.000000;
      end; else
      if Age not in ('NA','NA','NA') then do;
        test_TREE_0072 = 15.000000;
      end;
    end; else
    if Embarked >  2.000000 then do;
      test_TREE_0072 = 11.000000;
    end;
  end;
end;
if Pclass in ('1') then do;
  if Age <= 63.500000 then do;
    if Sex in ('female') then do;
      if Parch in ('') then do;
        test_TREE_0073 = 14.000000;
      end; else
      if Parch not in ('') then do;
        test_TREE_0073 = 15.000000;
      end;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0073 = 9.000000;
    end;
  end; else
  if Age >  63.500000 then do;
    test_TREE_0073 = 5.000000;
  end;
end; else
if Pclass not in ('1') then do;
  if Sex in ('female') then do;
    if SibSp in ('NA') then do;
      test_TREE_0073 = 10.000000;
    end; else
    if SibSp not in ('NA') then do;
      test_TREE_0073 = 11.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Pclass <= 2.000000 then do;
      test_TREE_0073 = 12.000000;
    end; else
    if Pclass >  2.000000 then do;
      test_TREE_0073 = 13.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Fare <= 70.275000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0074 = 8.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0074 = 9.000000;
    end;
  end; else
  if Fare >  70.275000 then do;
    if Age <= 25.500000 then do;
      test_TREE_0074 = 10.000000;
    end; else
    if Age >  25.500000 then do;
      test_TREE_0074 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Embarked in ('C') then do;
    if Fare <= 28.725000 then do;
      test_TREE_0074 = 12.000000;
    end; else
    if Fare >  28.725000 then do;
      test_TREE_0074 = 13.000000;
    end;
  end; else
  if Embarked not in ('C') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0074 = 14.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0074 = 15.000000;
    end;
  end;
end;
if Fare <= 15.172900 then do;
  if Age <= 15.500000 then do;
    if Age <= 14.250000 then do;
      test_TREE_0075 = 8.000000;
    end; else
    if Age >  14.250000 then do;
      test_TREE_0075 = 9.000000;
    end;
  end; else
  if Age >  15.500000 then do;
    if Fare <= 7.731250 then do;
      test_TREE_0075 = 10.000000;
    end; else
    if Fare >  7.731250 then do;
      test_TREE_0075 = 11.000000;
    end;
  end;
end; else
if Fare >  15.172900 then do;
  if Pclass in ('1','2') then do;
    if Embarked in ('','C','Q') then do;
      test_TREE_0075 = 12.000000;
    end; else
    if Embarked not in ('','C','Q') then do;
      test_TREE_0075 = 13.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Embarked in ('C') then do;
      test_TREE_0075 = 14.000000;
    end; else
    if Embarked not in ('C') then do;
      test_TREE_0075 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Parch <= 1.500000 then do;
    if Embarked in ('','C','Q') then do;
      test_TREE_0076 = 8.000000;
    end; else
    if Embarked not in ('','C','Q') then do;
      test_TREE_0076 = 9.000000;
    end;
  end; else
  if Parch >  1.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0076 = 10.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0076 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Parch <= 0.500000 then do;
    if Fare <= 26.143750 then do;
      test_TREE_0076 = 12.000000;
    end; else
    if Fare >  26.143750 then do;
      test_TREE_0076 = 13.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0076 = 14.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0076 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Embarked in ('','C','Q') then do;
    if Age <= 28.500000 then do;
      test_TREE_0077 = 8.000000;
    end; else
    if Age >  28.500000 then do;
      test_TREE_0077 = 9.000000;
    end;
  end; else
  if Embarked not in ('','C','Q') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0077 = 10.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0077 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 9.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0077 = 12.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0077 = 13.000000;
    end;
  end; else
  if Age >  9.500000 then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0077 = 14.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0077 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Fare <= 48.200000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0078 = 8.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0078 = 9.000000;
    end;
  end; else
  if Fare >  48.200000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0078 = 10.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0078 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Fare <= 10.172900 then do;
    if Fare <= 7.910400 then do;
      test_TREE_0078 = 12.000000;
    end; else
    if Fare >  7.910400 then do;
      test_TREE_0078 = 13.000000;
    end;
  end; else
  if Fare >  10.172900 then do;
    if Embarked in ('C') then do;
      test_TREE_0078 = 14.000000;
    end; else
    if Embarked not in ('C') then do;
      test_TREE_0078 = 15.000000;
    end;
  end;
end;
if Age <= 1.500000 then do;
  if Fare <= 39.343750 then do;
    test_TREE_0079 = 4.000000;
  end; else
  if Fare >  39.343750 then do;
    if Age in ('') then do;
      test_TREE_0079 = 8.000000;
    end; else
    if Age not in ('') then do;
      test_TREE_0079 = 9.000000;
    end;
  end;
end; else
if Age >  1.500000 then do;
  if Pclass in ('1') then do;
    if Sex <= 1.000000 then do;
      if SibSp in ('') then do;
        test_TREE_0079 = 14.000000;
      end; else
      if SibSp not in ('') then do;
        test_TREE_0079 = 15.000000;
      end;
    end; else
    if Sex >  1.000000 then do;
      test_TREE_0079 = 11.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Fare <= 10.481250 then do;
      test_TREE_0079 = 12.000000;
    end; else
    if Fare >  10.481250 then do;
      test_TREE_0079 = 13.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if Age <= 2.500000 then do;
      test_TREE_0080 = 8.000000;
    end; else
    if Age >  2.500000 then do;
      test_TREE_0080 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Age <= 38.500000 then do;
      test_TREE_0080 = 10.000000;
    end; else
    if Age >  38.500000 then do;
      test_TREE_0080 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Fare <= 15.172900 then do;
    if Age <= 13.500000 then do;
      test_TREE_0080 = 12.000000;
    end; else
    if Age >  13.500000 then do;
      test_TREE_0080 = 13.000000;
    end;
  end; else
  if Fare >  15.172900 then do;
    if Parch <= 2.500000 then do;
      test_TREE_0080 = 14.000000;
    end; else
    if Parch >  2.500000 then do;
      test_TREE_0080 = 15.000000;
    end;
  end;
end;
if Fare <= 10.481250 then do;
  if Embarked in ('Q') then do;
    if Parch <= 1.000000 then do;
      test_TREE_0081 = 8.000000;
    end; else
    if Parch >  1.000000 then do;
      test_TREE_0081 = 9.000000;
    end;
  end; else
  if Embarked not in ('Q') then do;
    if Pclass in ('1','2') then do;
      test_TREE_0081 = 10.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0081 = 11.000000;
    end;
  end;
end; else
if Fare >  10.481250 then do;
  if SibSp <= 2.500000 then do;
    if Age <= 14.250000 then do;
      test_TREE_0081 = 12.000000;
    end; else
    if Age >  14.250000 then do;
      test_TREE_0081 = 13.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0081 = 14.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0081 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Age <= 56.500000 then do;
    if Fare <= 15.522900 then do;
      test_TREE_0082 = 8.000000;
    end; else
    if Fare >  15.522900 then do;
      test_TREE_0082 = 9.000000;
    end;
  end; else
  if Age >  56.500000 then do;
    if Fare <= 73.125000 then do;
      test_TREE_0082 = 10.000000;
    end; else
    if Fare >  73.125000 then do;
      test_TREE_0082 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Sex in ('female') then do;
    if Fare <= 20.800000 then do;
      test_TREE_0082 = 12.000000;
    end; else
    if Fare >  20.800000 then do;
      test_TREE_0082 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 6.500000 then do;
      test_TREE_0082 = 14.000000;
    end; else
    if Age >  6.500000 then do;
      test_TREE_0082 = 15.000000;
    end;
  end;
end;
if Parch <= 0.500000 then do;
  if Fare <= 10.879200 then do;
    if Sex in ('female') then do;
      test_TREE_0083 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0083 = 9.000000;
    end;
  end; else
  if Fare >  10.879200 then do;
    if Embarked in ('C') then do;
      test_TREE_0083 = 10.000000;
    end; else
    if Embarked not in ('C') then do;
      test_TREE_0083 = 11.000000;
    end;
  end;
end; else
if Parch >  0.500000 then do;
  if Sex in ('female') then do;
    if Pclass in ('1','2') then do;
      test_TREE_0083 = 12.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0083 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 26.875000 then do;
      test_TREE_0083 = 14.000000;
    end; else
    if Fare >  26.875000 then do;
      test_TREE_0083 = 15.000000;
    end;
  end;
end;
if Fare <= 50.987500 then do;
  if Sex in ('female') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0084 = 8.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0084 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0084 = 10.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0084 = 11.000000;
    end;
  end;
end; else
if Fare >  50.987500 then do;
  if Fare <= 77.622900 then do;
    if Fare <= 60.287500 then do;
      test_TREE_0084 = 12.000000;
    end; else
    if Fare >  60.287500 then do;
      test_TREE_0084 = 13.000000;
    end;
  end; else
  if Fare >  77.622900 then do;
    if Fare <= 79.025000 then do;
      test_TREE_0084 = 14.000000;
    end; else
    if Fare >  79.025000 then do;
      test_TREE_0084 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Embarked in ('','C') then do;
    if Age <= 18.500000 then do;
      test_TREE_0085 = 8.000000;
    end; else
    if Age >  18.500000 then do;
      test_TREE_0085 = 9.000000;
    end;
  end; else
  if Embarked not in ('','C') then do;
    if SibSp <= 4.500000 then do;
      test_TREE_0085 = 10.000000;
    end; else
    if SibSp >  4.500000 then do;
      test_TREE_0085 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Parch <= 0.500000 then do;
    if Age <= 28.750000 then do;
      test_TREE_0085 = 12.000000;
    end; else
    if Age >  28.750000 then do;
      test_TREE_0085 = 13.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Fare <= 20.825000 then do;
      test_TREE_0085 = 14.000000;
    end; else
    if Fare >  20.825000 then do;
      test_TREE_0085 = 15.000000;
    end;
  end;
end;
if Fare <= 18.375000 then do;
  if Fare <= 7.600000 then do;
    if Embarked in ('C') then do;
      test_TREE_0086 = 8.000000;
    end; else
    if Embarked not in ('C') then do;
      test_TREE_0086 = 9.000000;
    end;
  end; else
  if Fare >  7.600000 then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0086 = 10.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0086 = 11.000000;
    end;
  end;
end; else
if Fare >  18.375000 then do;
  if SibSp <= 2.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0086 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0086 = 13.000000;
    end;
  end; else
  if SibSp >  2.500000 then do;
    if SibSp <= 3.500000 then do;
      test_TREE_0086 = 14.000000;
    end; else
    if SibSp >  3.500000 then do;
      test_TREE_0086 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Fare <= 52.277100 then do;
    if Sex in ('female') then do;
      test_TREE_0087 = 8.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0087 = 9.000000;
    end;
  end; else
  if Fare >  52.277100 then do;
    if Sex in ('female') then do;
      test_TREE_0087 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0087 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Sex in ('female') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0087 = 12.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0087 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Age <= 13.500000 then do;
      test_TREE_0087 = 14.000000;
    end; else
    if Age >  13.500000 then do;
      test_TREE_0087 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Fare <= 48.200000 then do;
    if Pclass in ('1','2') then do;
      test_TREE_0088 = 8.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0088 = 9.000000;
    end;
  end; else
  if Fare >  48.200000 then do;
    if SibSp <= 5.500000 then do;
      test_TREE_0088 = 10.000000;
    end; else
    if SibSp >  5.500000 then do;
      test_TREE_0088 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Pclass in ('1') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0088 = 12.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0088 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0088 = 14.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0088 = 15.000000;
    end;
  end;
end;
if Fare <= 15.147900 then do;
  if Fare <= 7.133350 then do;
    test_TREE_0089 = 4.000000;
  end; else
  if Fare >  7.133350 then do;
    if Age <= 13.500000 then do;
      if Sex <= 1.000000 then do;
        test_TREE_0089 = 14.000000;
      end; else
      if Sex >  1.000000 then do;
        test_TREE_0089 = 15.000000;
      end;
    end; else
    if Age >  13.500000 then do;
      test_TREE_0089 = 9.000000;
    end;
  end;
end; else
if Fare >  15.147900 then do;
  if Embarked in ('','C') then do;
    if Age <= 66.500000 then do;
      test_TREE_0089 = 10.000000;
    end; else
    if Age >  66.500000 then do;
      test_TREE_0089 = 11.000000;
    end;
  end; else
  if Embarked not in ('','C') then do;
    if Fare in ('NA','NA','NA') then do;
      test_TREE_0089 = 12.000000;
    end; else
    if Fare not in ('NA','NA','NA') then do;
      test_TREE_0089 = 13.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Fare <= 35.250000 then do;
    if Age <= 17.500000 then do;
      test_TREE_0090 = 8.000000;
    end; else
    if Age >  17.500000 then do;
      test_TREE_0090 = 9.000000;
    end;
  end; else
  if Fare >  35.250000 then do;
    if Age <= 63.000000 then do;
      test_TREE_0090 = 10.000000;
    end; else
    if Age >  63.000000 then do;
      test_TREE_0090 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Sex in ('female') then do;
    if Fare <= 23.350000 then do;
      test_TREE_0090 = 12.000000;
    end; else
    if Fare >  23.350000 then do;
      test_TREE_0090 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 7.910400 then do;
      test_TREE_0090 = 14.000000;
    end; else
    if Fare >  7.910400 then do;
      test_TREE_0090 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Fare <= 13.645850 then do;
    if Fare <= 7.750000 then do;
      test_TREE_0091 = 8.000000;
    end; else
    if Fare >  7.750000 then do;
      test_TREE_0091 = 9.000000;
    end;
  end; else
  if Fare >  13.645850 then do;
    if Age <= 45.250000 then do;
      test_TREE_0091 = 10.000000;
    end; else
    if Age >  45.250000 then do;
      test_TREE_0091 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Sex in ('female') then do;
    if SibSp <= 2.500000 then do;
      test_TREE_0091 = 12.000000;
    end; else
    if SibSp >  2.500000 then do;
      test_TREE_0091 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 7.910400 then do;
      test_TREE_0091 = 14.000000;
    end; else
    if Fare >  7.910400 then do;
      test_TREE_0091 = 15.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Parch <= 3.500000 then do;
    if Fare <= 10.481250 then do;
      if SibSp in ('NA') then do;
        test_TREE_0092 = 14.000000;
      end; else
      if SibSp not in ('NA') then do;
        test_TREE_0092 = 15.000000;
      end;
    end; else
    if Fare >  10.481250 then do;
      test_TREE_0092 = 9.000000;
    end;
  end; else
  if Parch >  3.500000 then do;
    test_TREE_0092 = 5.000000;
  end;
end; else
if Sex not in ('female') then do;
  if Age <= 6.500000 then do;
    if Pclass <= 3.000000 then do;
      test_TREE_0092 = 10.000000;
    end; else
    if Pclass >  3.000000 then do;
      test_TREE_0092 = 11.000000;
    end;
  end; else
  if Age >  6.500000 then do;
    if Fare <= 26.268750 then do;
      test_TREE_0092 = 12.000000;
    end; else
    if Fare >  26.268750 then do;
      test_TREE_0092 = 13.000000;
    end;
  end;
end;
if Age <= 6.500000 then do;
  if Pclass in ('1','2') then do;
    test_TREE_0093 = 4.000000;
  end; else
  if Pclass not in ('1','2') then do;
    if Embarked in ('C') then do;
      test_TREE_0093 = 8.000000;
    end; else
    if Embarked not in ('C') then do;
      if Parch in ('') then do;
        test_TREE_0093 = 14.000000;
      end; else
      if Parch not in ('') then do;
        test_TREE_0093 = 15.000000;
      end;
    end;
  end;
end; else
if Age >  6.500000 then do;
  if Embarked in ('C') then do;
    if Pclass in ('1') then do;
      test_TREE_0093 = 10.000000;
    end; else
    if Pclass not in ('1') then do;
      test_TREE_0093 = 11.000000;
    end;
  end; else
  if Embarked not in ('C') then do;
    if Sex <= 1.000000 then do;
      test_TREE_0093 = 12.000000;
    end; else
    if Sex >  1.000000 then do;
      test_TREE_0093 = 13.000000;
    end;
  end;
end;
if Sex in ('female') then do;
  if Fare <= 48.200000 then do;
    if Fare <= 27.450000 then do;
      test_TREE_0094 = 8.000000;
    end; else
    if Fare >  27.450000 then do;
      test_TREE_0094 = 9.000000;
    end;
  end; else
  if Fare >  48.200000 then do;
    if SibSp <= 5.500000 then do;
      test_TREE_0094 = 10.000000;
    end; else
    if SibSp >  5.500000 then do;
      test_TREE_0094 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Fare <= 25.962500 then do;
    if Embarked in ('C') then do;
      test_TREE_0094 = 12.000000;
    end; else
    if Embarked not in ('C') then do;
      test_TREE_0094 = 13.000000;
    end;
  end; else
  if Fare >  25.962500 then do;
    if Fare <= 30.597900 then do;
      test_TREE_0094 = 14.000000;
    end; else
    if Fare >  30.597900 then do;
      test_TREE_0094 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Parch <= 0.500000 then do;
    if Age <= 55.500000 then do;
      test_TREE_0095 = 8.000000;
    end; else
    if Age >  55.500000 then do;
      test_TREE_0095 = 9.000000;
    end;
  end; else
  if Parch >  0.500000 then do;
    if Parch <= 3.500000 then do;
      test_TREE_0095 = 10.000000;
    end; else
    if Parch >  3.500000 then do;
      test_TREE_0095 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Sex in ('female') then do;
    if Fare <= 22.904150 then do;
      test_TREE_0095 = 12.000000;
    end; else
    if Fare >  22.904150 then do;
      test_TREE_0095 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Fare <= 9.491650 then do;
      test_TREE_0095 = 14.000000;
    end; else
    if Fare >  9.491650 then do;
      test_TREE_0095 = 15.000000;
    end;
  end;
end;
if Fare <= 10.481250 then do;
  if Parch <= 1.500000 then do;
    if Embarked in ('Q') then do;
      if Age <= 30.000000 then do;
        test_TREE_0096 = 14.000000;
      end; else
      if Age >  30.000000 then do;
        test_TREE_0096 = 15.000000;
      end;
    end; else
    if Embarked not in ('Q') then do;
      test_TREE_0096 = 9.000000;
    end;
  end; else
  if Parch >  1.500000 then do;
    test_TREE_0096 = 5.000000;
  end;
end; else
if Fare >  10.481250 then do;
  if Fare <= 74.375000 then do;
    if Sex in ('female') then do;
      test_TREE_0096 = 10.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0096 = 11.000000;
    end;
  end; else
  if Fare >  74.375000 then do;
    if Sex <= 1.000000 then do;
      test_TREE_0096 = 12.000000;
    end; else
    if Sex >  1.000000 then do;
      test_TREE_0096 = 13.000000;
    end;
  end;
end;
if Fare <= 74.375000 then do;
  if Sex in ('female') then do;
    if Pclass in ('1','2') then do;
      if Age <= 56.000000 then do;
        test_TREE_0097 = 14.000000;
      end; else
      if Age >  56.000000 then do;
        test_TREE_0097 = 15.000000;
      end;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0097 = 9.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Parch <= 1.500000 then do;
      test_TREE_0097 = 10.000000;
    end; else
    if Parch >  1.500000 then do;
      test_TREE_0097 = 11.000000;
    end;
  end;
end; else
if Fare >  74.375000 then do;
  if Age <= 63.500000 then do;
    if Sex in ('female') then do;
      test_TREE_0097 = 12.000000;
    end; else
    if Sex not in ('female') then do;
      test_TREE_0097 = 13.000000;
    end;
  end; else
  if Age >  63.500000 then do;
    test_TREE_0097 = 7.000000;
  end;
end;
if Sex in ('female') then do;
  if Pclass in ('1','2') then do;
    if SibSp <= 0.500000 then do;
      test_TREE_0098 = 8.000000;
    end; else
    if SibSp >  0.500000 then do;
      test_TREE_0098 = 9.000000;
    end;
  end; else
  if Pclass not in ('1','2') then do;
    if Age <= 39.000000 then do;
      test_TREE_0098 = 10.000000;
    end; else
    if Age >  39.000000 then do;
      test_TREE_0098 = 11.000000;
    end;
  end;
end; else
if Sex not in ('female') then do;
  if Pclass in ('1') then do;
    if SibSp <= 1.500000 then do;
      test_TREE_0098 = 12.000000;
    end; else
    if SibSp >  1.500000 then do;
      test_TREE_0098 = 13.000000;
    end;
  end; else
  if Pclass not in ('1') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0098 = 14.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0098 = 15.000000;
    end;
  end;
end;
if Pclass in ('1','2') then do;
  if Age <= 17.500000 then do;
    if Parch <= 0.500000 then do;
      test_TREE_0099 = 8.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0099 = 9.000000;
    end;
  end; else
  if Age >  17.500000 then do;
    if Fare <= 77.622900 then do;
      test_TREE_0099 = 10.000000;
    end; else
    if Fare >  77.622900 then do;
      test_TREE_0099 = 11.000000;
    end;
  end;
end; else
if Pclass not in ('1','2') then do;
  if Sex in ('female') then do;
    if Fare <= 23.700000 then do;
      test_TREE_0099 = 12.000000;
    end; else
    if Fare >  23.700000 then do;
      test_TREE_0099 = 13.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Parch <= 0.500000 then do;
      test_TREE_0099 = 14.000000;
    end; else
    if Parch >  0.500000 then do;
      test_TREE_0099 = 15.000000;
    end;
  end;
end;
if Age <= 5.500000 then do;
  if Fare <= 27.825000 then do;
    test_TREE_0100 = 4.000000;
  end; else
  if Fare >  27.825000 then do;
    if Fare in ('NA','NA','NA','NA') then do;
      test_TREE_0100 = 8.000000;
    end; else
    if Fare not in ('NA','NA','NA','NA') then do;
      if SibSp <= 4.500000 then do;
        test_TREE_0100 = 14.000000;
      end; else
      if SibSp >  4.500000 then do;
        test_TREE_0100 = 15.000000;
      end;
    end;
  end;
end; else
if Age >  5.500000 then do;
  if Sex in ('female') then do;
    if Pclass in ('1','2') then do;
      test_TREE_0100 = 10.000000;
    end; else
    if Pclass not in ('1','2') then do;
      test_TREE_0100 = 11.000000;
    end;
  end; else
  if Sex not in ('female') then do;
    if Pclass <= 1.000000 then do;
      test_TREE_0100 = 12.000000;
    end; else
    if Pclass >  1.000000 then do;
      test_TREE_0100 = 13.000000;
    end;
  end;
end;

/* Final Score Calculation*/
test_lgt = sum(of test_TREE_:)/100;