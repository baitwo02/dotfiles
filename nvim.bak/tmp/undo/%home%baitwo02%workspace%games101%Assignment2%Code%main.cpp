Vim�UnDo� �:ӼL�x�ob��%@0�#�0�َO)�Ot   �   {                              e�d�    _�                     e   9    ����                                                                                                                                                                                                                                                                                                                                                             e�Z�    �   d   f   �      ;        r.clear(rst::Buffers::Color | rst::Buffers::Depth);5��    d   9                  �	                     �    d   >                 �	                    �    d   A                 �	                    �    d   J                 �	                    �    d   J                 �	                    5�_�                    w   9    ����                                                                                                                                                                                                                                                                                                                                                             e�Z�    �   v   x   �      ;        r.clear(rst::Buffers::Color | rst::Buffers::Depth);5��    v   9               
   �              
       �    v   A                 �                    �    v   J                                     5�_�                    S       ����                                                                                                                                                                                                                                                                                                                                                             e�d�     �   Q   S   �      %    std::vector<Eigen::Vector3f> cols   {�   R   T   �                  {5��    R                     �                     �    R                      �                     �    Q   %                  �                     5�_�                    Y       ����                                                                                                                                                                                                                                                                                                                                                             e�d�     �   X   Z   �                  };5��    X                     �                     5�_�                    S       ����                                                                                                                                                                                                                                                                                                                            S          X                 e�d�    �   R   Y   �      *                    {217.0, 238.0, 185.0},   *                    {217.0, 238.0, 185.0},   *                    {217.0, 238.0, 185.0},   *                    {185.0, 217.0, 238.0},   *                    {185.0, 217.0, 238.0},   )                    {185.0, 217.0, 238.0}5��    R                     �                     �    S                     �                     �    T                     �                     �    U                                          �    V                                           �    W                     =                     5�_�                    M       ����                                                                                                                                                                                                                                                                                                                            S          X                 e�d�     �   K   M   �      $    std::vector<Eigen::Vector3i> ind   {�   L   N   �                  {5��    L                     %                     �    L                      $                     �    K   $                  #                     �    K   $                  #                     5�_�                    O       ����                                                                                                                                                                                                                                                                                                                            R          W                 e�d�     �   N   P   �                  };5��    N                     g                     5�_�      	              M       ����                                                                                                                                                                                                                                                                                                                            M          N                 e�d�     �   L   O   �                          {0, 1, 2},                       {3, 4, 5}5��    L                     ,                     �    M                     =                     5�_�      
           	   C       ����                                                                                                                                                                                                                                                                                                                            M          N                 e�d�     �   A   C   �      $    std::vector<Eigen::Vector3f> pos   {�   B   D   �                  {5��    B                                          �    B                                           �    A   $                                       �    A   $                                       5�_�   	              
   I       ����                                                                                                                                                                                                                                                                                                                            L          M                 e�d�     �   H   J   �                  };5��    H                     �                     5�_�   
                 C       ����                                                                                                                                                                                                                                                                                                                            C          H                 e�d�    �   B   I   �                          {2, 0, -2},                       {0, 2, -2},                        {-2, 0, -2},   "                    {3.5, -1, -5},   #                    {2.5, 1.5, -5},   !                    {-1, 0.5, -5}5��    B                                          �    C                     1                     �    D                     C                     �    E                     V                     �    F                     k                     �    G                     �                     5�_�                    @        ����                                                                                                                                                                                                                                                                                                                            C          H                 e�d�     �   ?   @           5��    ?                      �                     5�_�                    2        ����                                                                                                                                                                                                                                                                                                                            B          G                 e�d�     �   0   2   �      %int main(int argc, const char** argv)   {�   1   3   �      {5��    0   %                  �                     �    0   %                  �                     5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            )          +                 e�d�    �   )   ,   �      P                0, 0, -(zFar+zNear)/(zFar-zNear), -(2*zFar*zNear)/(zFar-zNear),                    0, 0, -1, 0;�   (   *   �      "                0, zNear/t, 0, 0, 5��    (                     �                     �    )                                          �    *                     n                     5�_�                            ����                                                                                                                                                                                                                                                                                                                            )          +                 e�d�     �   	      �      8Eigen::Matrix4f get_view_matrix(Eigen::Vector3f eye_pos)   {�   
      �      {5��    	   8                  �                      �    	   8                  �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                            (          *                 e�d�    �         �      6Eigen::Matrix4f get_model_matrix(float rotation_angle)   {�         �      {5��       6                  4                     �       6                  4                     5�_�                             ����                                                                                                                                                                                                                                                                                                                            '          )                 e�d�    �         �      aEigen::Matrix4f get_projection_matrix(float eye_fov, float aspect_ratio, float zNear, float zFar)   {�         �      {5��       a                  �                     �       a                  �                     5��