GDPC                0                                                                         T   res://.godot/exported/133200997/export-39addcdbd4694d38b3321de77ff1a1ad-Player.scn  �      *      k��C���L�}u��    P   res://.godot/exported/133200997/export-5c96510b10ef8c9a1d543a4d17e98a09-Test.scn�       �      mJ����<�Jh��>    ,   res://.godot/global_script_class_cache.cfg  �:             ��Р�8���8~$}P�    D   res://.godot/imported/icon.png-487276ed1e3a0c39cad0279d744ee560.ctexp$      �      3D��x�	 �|J���    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex ,      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  �F      �       �u���?(:�/��I�    $   res://Scenes/Levels/Player+Camera.gd        �       a���C�����n�r[    $   res://Scenes/Levels/Test.tscn.remap �9      a       ���>�Q���^}7�    (   res://Scenes/Objects/Player.tscn.remap   :      c       ��BCO�5�m�;�4{       res://Scripts/Camera2D.gd          �      -L�����y��l]       res://Scripts/Movement.gd   �      �	      B�堮��+ʹ�{���       res://icon.png  �:            ��o�&-A^3�j�K��       res://icon.png.import   0+      �       ��.��y�D
��Z�       res://icon.svg.import   �8      �       PI%�a�.ͯ.�D��       res://project.binary`G      :      ��%��72iF�m�        extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _process(delta):
	if $Camera2D.transitioning == true:
		$Player.freeze = true
	else:
		$Player.freeze = false

   RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script    lightmap_size_hint 	   material    custom_aabb    flip_faces    add_uv2    uv2_padding    subdivide_width    subdivide_depth    center_offset    orientation 	   _bundled       Script %   res://Scenes/Levels/Player+Camera.gd ��������   PackedScene !   res://Scenes/Objects/Player.tscn ����
$�l   Script    res://Scripts/Camera2D.gd ��������      local://RectangleShape2D_1ugqm �         local://QuadMesh_6olh7 �         local://RectangleShape2D_sxd7k          local://PackedScene_703uc 7         RectangleShape2D       
   \=@3ĥA      	   QuadMesh             RectangleShape2D             PackedScene          	         names "   '      Node2D    Node2D2    script    Player    collision_layer    collision_mask 	   Camera2D    zoom    position_smoothing_enabled    Left    Area2D    CollisionShape2D 	   position    scale    shape    Right    CollisionShape2D2    Up    CollisionShape2D3 	   rotation    Down    CollisionShape2D4    StaticBody2D    MeshInstance2D    mesh    StaticBody2D2    StaticBody2D3    StaticBody2D4    StaticBody2D5    StaticBody2D6    StaticBody2D7    StaticBody2D8    StaticBody2D9    StaticBody2D10    _on_left_body_entered    body_entered    _on_right_body_entered    _on_up_body_entered    _on_down_body_entered    	   variants    "                            
   �M�?�M�?                     
     ��   �
   x�f@�B          
     �C  ��
     �@  ��   �ɿ
   ��J@�HB
     �A ��C
   ��J@��MB
    @�� ��C
   � ,C���
   ��A��A                  
     6C  �B
   ��KA;�O�
     vC  �A
     �C   �
     �C  ��
     �C  P�
   '�[A<���
     @D   �
   ��YA��
    �[D  ��
     �C  e�
    @%D  ��
   ��@��      node_count    +         nodes     �  ��������        ����                       ����                     ���                                      ����                                
   	   ����                                ����                  	              
      ����                                ����      
            	              
      ����                                ����                        	              
      ����                   
             ����                        	                       ����                     ����                                ����                                ����                          ����                                ����                                ����                          ����                                ����                                ����                          ����                                ����                                ����                          ����                                ����                                ����                          ����                                ����                                ����                          ����                                ����                                ����                          ����                   "             ����                   "             ����                           ����                   %             ����                   %             ����                       !   ����             !       (             ����                   (             ����                   conn_count             conns              #   "                    #   $                    #   %              
      #   &                    node_paths              editable_instances              version             RSRC      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    height    script    lightmap_size_hint 	   material    custom_aabb    flip_faces    add_uv2    uv2_padding    radial_segments    rings    size    subdivide_width    subdivide_depth    center_offset    orientation 	   _bundled       Script    res://Scripts/Movement.gd ��������      local://CapsuleShape2D_hyymc �         local://CapsuleMesh_jpj4n �         local://QuadMesh_1f54k �         local://PackedScene_h5avw �         CapsuleShape2D             CapsuleMesh          	   QuadMesh             PackedScene          	         names "         Player    scale    script    CharacterBody2D    CollisionShape2D    shape    Visible    Node2D    MeshInstance2D    mesh    MeshInstance2D2 	   modulate 	   position    Control    layout_mode    anchors_preset    offset_right    offset_bottom    Label    offset_left    offset_top    	   variants       
   ף��  �?                    
   ���A�Op�            &6�=�=z��>  �?
   �/A  �@
   
h�A�s�@                            B   ��RC      �   ��zC     ��
   {1�p|@      node_count             nodes     W   ��������       ����                                  ����                           ����                     ����         	                    
   ����                     	                        ����      	      
                                ����      
                                           conn_count              conns               node_paths              editable_instances              version             RSRC      extends Camera2D

var transitioning = false



func _physics_process(delta):
	pass


func _on_left_body_entered(body):
	position.x += -950
	transitioning = true
	await get_tree().create_timer(0.9).timeout
	transitioning = false

func _on_right_body_entered(body):
	position.x += 950
	transitioning = true
	await get_tree().create_timer(0.9).timeout
	transitioning = false

func _on_up_body_entered(body):
	position.y += -520
	transitioning = true
	await get_tree().create_timer(0.9).timeout
	transitioning = false

func _on_down_body_entered(body):
	position.y += 520
	transitioning = true
	await get_tree().create_timer(0.9).timeout
	transitioning = false
               extends CharacterBody2D

const gravity = 600
const max_fall_speed = 400
const run_speed = 150
const jump_speed = -300
const brella_pow = 300

var freeze = false
var brella = true

var dir_left = true
var dir_right = false
var dir_up = false
var dir_down = false


# warning-ignore:unused_argument
func _physics_process(delta):
	
	if freeze == false:
		var right = Input.is_action_pressed('right')
		var left = Input.is_action_pressed('left')
		var jump = Input.is_action_just_pressed('c')
		var slide = Input.is_action_pressed("z")
		var umbrella = Input.is_action_just_pressed("x")
		
		if is_on_floor() and jump:
			velocity.y += jump_speed
		if right and velocity.x < run_speed:
			velocity.x += 50
			$Visible.scale.x = -1
			await get_tree().create_timer(0.01).timeout
		if left and velocity.x > -run_speed:
			velocity.x += -50
			$Visible.scale.x = 1
			await get_tree().create_timer(0.01).timeout
		if Input.is_action_just_released("c"):
			jump_cut()
			
		if velocity.y < max_fall_speed:
			velocity.y += gravity * delta
		move_and_slide()
			
		if Input.is_action_pressed("left"):
			dir_left = true
		else:
			dir_left = false
		if Input.is_action_pressed("right"):
			dir_right = true
		else:
			dir_right = false
		if Input.is_action_pressed("up"):
			dir_up = true
		else:
			dir_up = false
		if Input.is_action_pressed("down"):
			dir_down = true
		else:
			dir_down = false
	
		if umbrella:
			if brella == true: brella = false
			else: brella = true
			if brella == true:
				if Input.is_action_pressed("left"):
					velocity.x = -brella_pow * 1.5
					print("left")
				if Input.is_action_pressed("right"): 
					velocity.x = brella_pow * 1.5
					print("right")
				if dir_up: 
					velocity.y = -brella_pow
				if dir_down: 
					velocity.y = brella_pow
			else:
				if Input.is_action_pressed("left"):
					velocity.x = brella_pow *0.5
					print("left")
				if Input.is_action_pressed("right"): 
					velocity.x = -brella_pow *0.5
					print("right")
				if dir_up: 
					velocity.y = brella_pow
				if dir_down: 
					velocity.y = -brella_pow
	
		if is_on_wall() and slide:
			velocity.y = 50
	if position.y > 2000 or Input.is_action_pressed("r"):
# warning-ignore:return_value_discarded
		get_tree().reload_current_scene()
	
	
	if velocity.x > 0: velocity.x += -25
	if velocity.x < 0: velocity.x += 25
	
	
	if brella == false: $Visible/MeshInstance2D2.position.y = -24
	else: $Visible/MeshInstance2D2.position.y = 5


func jump_cut():
	if velocity.y < -100:
		velocity.y -= -150
        GST2   S   U      ����               S U        �  RIFF�  WEBPVP8Ls  /R  -l��H��'�B���ڶ��ڶkΖG�m۶m��m�v�UTUɿ<�ض�$��LW�=��;�nk;6G�2�43�l۶��m�v�N_T�$�]��}���m#E��2?B�����q5���>�e�U.QNT/Z`��o��~��>��I"���G�PN2��� ��؁�8�� ��s���3t��p��-� `94����o�W��K��&3�%ʹ��f�5��d���>�sX[|=1L-���Y�F��2<`Ϋ�3ڦ5�L2I$�H�OIM�����qJ=a�����Zڷ�)x0�o��E��$i(/�4���XW�τJ7*k�0�����A����U*	�93�`�
~��Gܦ �k?H�Q��di�N�3�%��������>�}�~�5x[��Ľ���4�P�)
`��io ��p$)�[8/��_�:�m#���$)�&����7l��K��b$�M�Ǩ�� �2r��f�����W�J䶳fؑhK)ޡ
��/�F�?�i�愁��Zf�[�4:Ga������;8Ik�&��h$ٺ0�`�W*�%�:ψ&��f{>���vP	�,�'�5�Fbd�@��� .TƩ�K{� ���{'�<S�? ��M4D	��v�4�R�{ k�ʣY��sp�2IF9X�c�$!ZhM�<�Q�[ m^��4D�F۰)߷�+�=�֣�*��n%�i�Paz"�$FZά�V�`����CC������^��#����Xk$D	�v��B~�����Z�A���/�v�$�zk8���:Z��ǵ7Ҡ$�����/�y���*@b<�Xp��I|��>��s�{�&B4q��F�Ӷ �S�K_�@"7q�$?n�I"��y�LbEМ�w�S���#8ByB��XO#I$87�f#�=7g>�3�e�����S%Io�گ�yU�7�e{^��Խ!�gB�hL�K�y�yK̛b�4�Dn�7��FG/4��yxGH��h2�f�E#o��ݚ��  ��y�h��LIM�~�3 `������sw27H��>���#y7��x#�&��"m"mzZ��H�$�~�!	r�� ����il��ݩ<�<�ܣbpؼ�h&�&��7��K��nU~�U`3ece5��ߘ��Dʹ�H�y�o���g����#z;H"��x���V0����.��iwj^�_������:Q}�o`O��?� �0z�yn�|��_�?��<G��H>r�� ��5�Mc^�.��Q$�T�sW2�������S�Q���.P���8f�g����b�Zz���s��C��;�����s�ȑg-��W `3/0����X�� /�^Zw��߀�>�����I$�9�|�|JSH|�4"i�O��I�r�zV�m�!��
 ���P�I�0�$�>�k��˚@�0������e;�Rd���z�(q4�I%����?���O�'`}�Kj�����X���ۤ��b�=�d�o���I���) v�EX��ّ!~g�t�Q�6�`u
l ��(c�P�f;�aw�Q�q�@�,� {q ��c[�g�P�z�9�fu4`U�$G�p<�(�[�����u]x���/�ې�@�<۰) 2�D(>w�e���F��9��)y1OӃD)gp��T [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cjlonil4rk7e2"
path="res://.godot/imported/icon.png-487276ed1e3a0c39cad0279d744ee560.ctex"
metadata={
"vram_texture": false
}
                GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dfrsro7fcxvm6"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-5c96510b10ef8c9a1d543a4d17e98a09-Test.scn"
               [remap]

path="res://.godot/exported/133200997/export-39addcdbd4694d38b3321de77ff1a1ad-Player.scn"
             list=Array[Dictionary]([])
     �PNG

   IHDR   S   U   ��OJ   sRGB ���   gAMA  ���a   	pHYs  �  ��o�d  �IDATx^�ypU��3==g`296�`4k"IE��9d1$Q����+�T�R��,��.��E����Y�J<"��0��H�$C	9'L�9z�{�݄�� �d:1��T����t���~����銌�8��߱Ǹ�Ǹ���U.��t:Y�n�P(b�]�=娰����������uuuׯ_kk��d2���V8��	y0,,,888   B(Z�W9��X,�����U��s���܂�_�2! � ZA�� ��G��?��:)�阘�� �C�Oh6�kjjΟ?��/��?�ʗ� �ГA�ʗeTrBm���ฮ�怓���	`�)̖��
b���.\��hĺw͐)����ן9s�� ?;��ɓxs4�5h�� ��}F��2�z�A�.�|��`!A�@A�rems�O _�Y��ڵ�2e�X����o���ss�}����j4` '����u�n���Z` �rV�>�Ҿ!<<l��tLb�]pWʯ\��������:{���2�oԇ2���Aݍڞ�)��}�-�x���/�EDD�ew�*G?�]�����V�3Yg�ӡb\'c�Dmo�5>-��] �s���wĠ��4����iӺ��O�b�F9���F���I��վ�Hzz��E�D�������O>�x۶$��rtNr��d,{���� {333���łA2�EEE/����i�n��4)F,�.(^��[l_|������$��*?v��ܹs����:�X�;��'(^Iu����>p���%KĂ3 �أRSS��@>G�Z�\��y�-�	iw ��ʏ9����J��U^����O9-�,�y7..N, �Y�����U=5�d#x?6��G5������~©�@���&��G�[['�+iZ=�dw����,M�i �=��X�/}��m�Z[��]JӚ+�{�l��}	`ʚ5�^�xQ,�>}����C%`t�,�)�v�U������fM��9���/���w�_�z��מX��6`�u����'u�:u��Ow9���+߷o��d�ӥ8h���� q��{�>o�_����~+����h�|�rHH�ޠd	���[ખTp7��WUUu�}��=��煅���kg0��40Bi'a������v:���'��m6ۑ#Y �������
L��N_���-[��<-Z{��8����r6���; c^I2���{�M?q�ZPP�X����/\p=?�h�aGSb�c��Fݟjj�C����tSβlaa>�4�6�n4��*G'�z���u��u��F7�'~. �f�Ԩ�z�a�O?�\t�&7<}�8iԲ߁n,m���k׮�r��T؝n�	� I%�'6����J��2?]|c#=zX���3�u��k�sX����;�5b��Myss����zRñ7��8¨{������D4�x*ǭ�'��8$
���8��G>��>��������Ք��R����L�N�R?��>�u�6q����Xv��1�v��^�c
��`���$#p��Ȼ>x�Ly��r�1��T}0����
��0��p�r劯��*2����_Ri��R����$9�O��?:�v%��}�~].����JMK�T�JW��5��6���hA�J}C�:�RF��(5�(�J�\M&������	g���O{{�p�x�۱�+�J�^����C�M!����f%��
����ґ�>7xҠy�����[�</ޫJ���^��`���a�F3��X9m��z���q�)W�����`qCM�+z�#�u"."�&�B�7�`X�Is��Z�G�xW�;^������S�O���'��{p>����Cj��))���ѣ�{� XjԤ�:'�?��nHA ��hn���ɰq�bc㪫������mm-��]V)�k���2i����;�|s�����������3''k��͸oЮcl�NF�/%�J�MFV�;r��,��8cM2�f���/xBA�K[�ϟ?�[�V��������~�xㆹ�Ƅ�;�J�t��y���t:���j�j����@��5�vN��76�FÎ�_~iӦw���q\���LHH@a����b�
X�&�4l�O���V�^�R��ӝK�.��}��{۔��u�<󖶡��@΋/.��zLA*�����l=�2�6���,A)���ӧ���=���+�����;;;qV��w�ԃ���g�}F<�M6oތA!����b4��'�xb��鸟���e��Ht����{�/���p�ٳ���(�s�`�c�58xZZڃ�ޫQ��{v�����o��F��3 ��b��WyN�8�����]��؉����5/�`�	5����hٲ%��w��e2�Dkw0���N�������2���}��戊�B嘾������*++q4�:�3�x�UUUx!�$CBB�{(�� 1�/ �8"�Z}[�6+f���pوdʱ7.X� �N�ב@9�/�\�>����8�^G2�{��������r�br�4�.�t5�$Hrc��#)��G�4��\
�3�4H�\� �B�cq&#<W�X,����£5��GB�{U��d�-��$��#)���d�A傷{��a�����Ǐ��f�4lH��-<{���￟9sfLL̊+L&�h$P��F�A\�vG8�ʿ����:iҤٳggdd|��g���P�U�Z�v��ɂکS�����l6��^UU�}�v������K��˱��ް�U��a����L�^��˗/_�j���߿{�n��\.Ǿ������\�T>��ø��QXhh�i�<�w�ް��9s�h4T�y����NQ�������<<<���n���MHH

~u@{SS�$''��Y�򈈈ŋ����%x�c��<�Z�?��#��[��ǻ�QF0��Luu5vl��=HII���Ɯ'�6�Y<�oKKKO�:UWW�u:�{{\\ܐ�3�^�x��~uxq�+���$x;Íƕ�=ƪr��%dV���    IEND�B`�     �P�j�eT   res://Scenes/Levels/Test.tscn����
$�l    res://Scenes/Objects/Player.tscn�&�TK   res://icon.png���QI�h   res://icon.svg   ECFG      application/config/name$         Unbrella Platformer test 1     application/run/main_scene(         res://Scenes/Levels/Test.tscn      application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.png     input/z�              deadzone      ?      events                  InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   Z   	   key_label             unicode    z      echo          script         input/up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/r�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   R   	   key_label             unicode    r      echo          script         input/c�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   C   	   key_label             unicode    c      echo          script         input/x�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   X   	   key_label             unicode    x      echo          script            