PGDMP                      |           apple    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16490    apple    DATABASE     x   CREATE DATABASE apple WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE apple;
                postgres    false            �            1259    25140    iphone_board    TABLE     3  CREATE TABLE public.iphone_board (
    id integer NOT NULL,
    model_name character varying(255),
    memory_size character varying(255),
    color_name character varying(255),
    image_1 character varying(255),
    image_2 character varying(255),
    image_3 character varying(255),
    stock integer
);
     DROP TABLE public.iphone_board;
       public         heap    postgres    false            �            1259    25139    iphone_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iphone_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.iphone_images_id_seq;
       public          postgres    false    228                       0    0    iphone_images_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public.iphone_images_id_seq OWNED BY public.iphone_board.id;
          public          postgres    false    227            g           2604    25143    iphone_board id    DEFAULT     s   ALTER TABLE ONLY public.iphone_board ALTER COLUMN id SET DEFAULT nextval('public.iphone_images_id_seq'::regclass);
 >   ALTER TABLE public.iphone_board ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �          0    25140    iphone_board 
   TABLE DATA           q   COPY public.iphone_board (id, model_name, memory_size, color_name, image_1, image_2, image_3, stock) FROM stdin;
    public          postgres    false    228   �                  0    0    iphone_images_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.iphone_images_id_seq', 7062, true);
          public          postgres    false    227            i           2606    25147    iphone_board iphone_images_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.iphone_board
    ADD CONSTRAINT iphone_images_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.iphone_board DROP CONSTRAINT iphone_images_pkey;
       public            postgres    false    228            �      x����r$�y���t:�x~�j��fV�ó�b6�L˜�D%�����d��
h.Ă#�2��Y�;���_}�O�����Ϳ�*g�������_}��������������_��5���O��Ǖ���?���~�����/�޾������a������.��7����o�Ӈ^�qVz��>��lP�iP�w2��iL��Ö��o���]����/>�q�g]��a]��l\�d\�����b{}�տ�|������u�6����l<���ˎ'���Q��'.v؟���?}u�]>�������ۆ�q�����N��W~#���q�m�7|�������A͕_�������1{�_}�ͷ��>Wy��}\�mC�a��;]��;���޼�����^�������7��ƫ?��Zo��U�,.����o��������O��Z�^_������O�jS�҃�'�����;ֽ<
�7��wsu_���^)�<]l����b����o.;����m�W��Vz۰>�������cr���{�Ɣ���������~~��/����^���|ɍ��~��􋉼���N�1�w>�����瞫����}1�_������G��������+�_���']?�\�c�X����O�/���'������z!��]x!��ۆu�B��b��������q�����]�߯?�N_=������!��^��RJZFV-8ivN�f��yj橙'f�}���5��C�_S_���c����=�;ؾ���ɸ��=����7������k�m`W}>��Ş����_����<\�����={#�we�����7y{��/����.��w���w��Ά����?�����������^����˽zGc{r6��?}����T��}������Z�����o���D�y�kܻ����D^)޻�����u�����o n�������>\?���q�ȹ�q��#��׸W�S_�r����׻[W��;p_;2�x�s������������{彟���Cz��ϛ΋�>������#���^�~?a����l�����_��HO�p��������K_���>��I�����$��+�|S[��9������J�|�Ϝؕ<8�G���T�h|�sj}N�����7��9�G�;���h{�s9x��%7�sޚoz�ϛ�9�e����N�Z���+��O�*%o˚��t�����<�+�>\<��oY���������[]��kw�?{ݩ~��ۆuy���/��j^��;�^��w����\���q]�eq\��;���^��q�/��{�����]z��ۆt���.��/<�x��~�����~���w�Jk�mXW�U:�Ş�����=x'�+��k7�<�e��_�7o<�\�����y�.v\��b\O~����_���WB������?o�׍���W=����o�콍?^N�f������t=��������Я��·�~������s����G
r����K���c���0׏��1��zļ��׏��){�]�Z�s�}�g��w3�S���e�qq��y]q�]o���ܡ_{6D\�:o^{���/N���O�l�gЛ�08�}�	�v��xы�_�Fo^����/N�����l�OϢ�nd����~��_�����[T>��O_�!�~ѭɼ��3:^��k�w<�Ӌ�p5��gt�z�]���koͿ��ʟ7�˿Ӎ|�zT��+�/�"���t�S�����_~�3��a巏�|��|Ջ����͠�5�hs�(��L����mL^���~���ȗ'�7����_��?5�a�O������r��~�V��'C\�-y~1�[���?}\ϧGp��_�:����z�=�����U���rп�^�6����5��f[Wf���~�m�A���Ax�E?oV�>��#�=�fy$���>�nƣ~ī���̮Ge�|�����G���]?�ȼ��!���͗��y]׾�(�_0��������>�O�Q?�N������O7���b-�r�#�'#��W���͓��������bo~��.�
����m�W��Vz۰>��bT�Ş��Q�.��=��|��6�ӷaۿ\�m���d���=x���=x�ʋ=��f��V?�������Ƽi�?��b�u�G�q�}���q�s�����/����a��֫?��5�6�O���^��{�q���u�����ޞ�o�;z^��q]>7�@˘����e��p���=9�|���f?�͡^�����7|�E/�/3��l��r�7�������Iy�m�\�sG~%8�<G��!s�������~�\o׫����;�k�����r�?_?T�~�O���Pq_}��9|�%�;	$�qqV}��^'rq�}���^'rq�}����ۿ�۷_�sQ�g�W/n�x2g�W��x2g��HWߙ���?w�� ����������|�z�n��������A��c8}�g�Գ;�>��O_��~ѭ�����S:=�����=�(^����=�(_v>*�yFu��������7�Jҫ���䩯~`������=�|�~ ��ȏ�������+�G�ʟ7�+��NW�{����;��c��g�w��Ɉ_�U<�u[����u;ӭ|��߾t~y}妺;�����+7���^�=_�9�g��,�S�|���_^�������?���k>����/��Mj\B���˓����'���}�����Pz��yq^�x�[/���W����Ƌ�7���Y���M7�L�����o�qe�o�T��k��/���l��[m�I�]��|�ϛܵ��|h~@����<���=������	�/"o���M��2N�@���\˕׾����ĵy�k���͵�x�W��^���9������-_o���]ˉ�|��>fw�*�����ݵ�x�W&<5���������2.W3�%��yg3��!o�����Z���K�w6�O�ҷn��O�^���^��|TO#ַ���;�*����͙�Q���ğ�эǆ_����]{Dx>y�׏{�F�{��F7{��_}�ͷ��VWy�'~\�m��a��ۋ={O�;.��=��t�gyo��7�yG��6��w�f�/����.���������p{>��Yqq���ۧC�}���5�6g�W��н��.�{i_��k7�>}+�2�b������ج��˿��bo��#zr:��?}����_|��Ƌ��Q�\��h��?�������_�V�����<n�١�0������>w�W��ɓ��2�gy��y?�뇐
��;�j�/��	\��'�Uzv��	��C��L`�BN��};�o��s��˃�8�v%s��8�v�s��83�zs��_I�ۯ�ܹ(���l��u�O������O��,~�j��;�@k��/����}��n}q��q�u7�~v��tC��}��w_������῾x���s�57'r�/��/���`��9^��������P���x��9_�����ko~�:��y�z�>\��������{y^=�������~�>�k���ߴ�����n�W�{�����;'�d�/ϴ7��<�����/����ū��O�����5���|���yy:���;���������l��g�~ۿ�ټ8�>����z{v+�O���*��׾2�7����敩���ʹ�����l�}��}۵�;����z�4�^+Λ/�ys�Z���C��gu���gu��=�����?�v��x�ϛЕ>=��gs-O^�~���\+�׮��w6�*��]�����_�����J>]ˌ7^����^ˌ7^����^+�7^˽������l�$��4��?�Da�OxL��<�秶����_�Q��ӟ�K.��ƿ���͜O���8�����}���x������R1��	����٠y�uve5�ʺ��ֿ�tO�3���������>=���\�˿^�͗����}�G<�2�Q�:������������<�#�g|��p�5�f~ֿxпx���3�̼0�z���3�=`�    �N��������~\�_���K��[��q	yk�?.с�����D������%:�t<.������q�> :�p�Ap�>��x�>��G��Q�x6K�~1�~1�~1�fޚyk歙�fޚyk歙�f>��h棙�f>��h棙�f>��j櫙�f���j櫙�f���j櫙���������������������4s]���_J�/�����K�ڥ}��+��K���ٿt�/��K��ҙ�t�/��K���Y�u�o��[����u�o��[���پu�o��[��֙�u����C3�<4���C3�<5���S3O�<5����u��$�z�p�B��)t�B���p��k5\��Z�j�Võ��p��k5\��Z�j�Võ��p��k5\��Z�j�Võ��p��k5\��Z�j�Võ��p��k5\��Z�j�Võ��p��k5\��Z�j�Võ��p��k5\��Z�j�Võ��p��k5\��Z�j�Võ��p��k5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�QÍn�p��5ܨ�F7j�Qín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܪ�V�j�Uín�p��[5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5ܡ�;�p��P�j�Cw��5��ɣ�;�p��P�j�Cw��5ܡ�;�p�;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;��Nj��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j��;���j���u�\>V�O��Cu�L>R�O��s)�X
>����3)�H
>�����(�8
>�"�4���(�O�>�"�4���(�O�>�"�4���(�O�>�"�4��%�J��%����%�ʺ�%�
��%�J��%����%�ʻ�%�
��%�J��%����%�ʼ�%�
��%�J��%����%�ʽ�%�
��%�J��%����%�ʾ�%�
��%�J��%����%�ʿ�%�
��%�J��%����%����%�
��%�J��%����%����%�
��%�J��%����%�|������->�q�|�����8|\�m���=�e|j��Z����=�e|j��Z����=�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1؉�Nvb�����`';1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'&;1ى�NLvb������d'��A�"h_�~�/��E�
A#h`���d0�F�JA
#ha1���Q��b';�؉�N,vb���X��b';�؉�N,vb���X��b';�؉�N,vb��^Ջ {t/��EP��A�"�_�� �/� FP�A#�`� �t0�FP�RA#�a5� ��0� FP��A#�bU� �t1�0FP��A#�cu� ��1�@FP�A##�d�� �t2�PFP�RA+#�e�� ��2�`FP��A3#�fՌ �t3�pFP��A;#�g�� ��3��FP�AC#�h� �t4��FP�RAK#�i5� ��4��FP��AS#�jU� �t5��FP��A[#�ku� ��5��FP�Ac#�l�� �t6��FP�RAk#�m�� ��6��FP��As#�nՍ �t7��FP��A{#�o�� ��7� GP�A�#�p� �t8�GP�RA�#�q5� ��8� GP��A�#�rU� �t9�0GP��A�#�su� ��9�@GP�A�#�t�� �t:�PGP�RA�#�u�� ��:�`GP��A�#�vՎ �t;�pGP��A�#�w�� ��;��GP�A�#�x� �t<��GP�RA�#�y5� ��<��GP��A�#�zU� �t=��GP��A�#�{u� ��=��GP�A�#�|�� �t>��GP�RA�#�}�� ��>��GP��A�#�~Տ �t?��GP��A�#��� ��?� HP 	 A$��� t@�HP	R A$��5� �@� HP	� A$��U� tA�0HP	� A$��u� �A�@HP	!A#$���� tB�PHP
	R!A+$���� �B�`HP	�!A3$��Ր tC�pHP	�!A;$���� �C��HP	"AC$��� #tD��HP	R"AK$��5� '�D��HP	�"AS$��U� +tE��HP	�"A[$��u� /�E��HP	#Ac$���� 3tF��HP	R#Ak$���� 7�F��HP	�#As$��Ց ;tG��HP	�#A{$���� ?�G� IP 	$A�$��� CtH�IP"	R$A�$��5� G�H� IP$	�$A�$��U� KtI�0IP&	�$A�$��u� O�I�@IP(	%A�$���� StJ�PIP*	R%A�$���� W�J�`IP,	�%A�$��Ւ [tK�pIP.	�%A�$���� _�K��IP0	&A�$��� ctL��IP2	R&A�$��5� g�L��IP4	�&A�$��U� ktM��IP6	�&A�$��u� o�M��IP8	'A�$���� stN��IP:	R'A�$���� w�N��IP<	�'A�$��Փ {tO��IP>	�'A�$���� �O� JP@	(A%��� �tP�JPB	R(A%��5� ��P� JPD	�(A%��U� �tQ�    0JPF	�(A%��u� ��Q�@JPH	)A#%���� �tR�PJPJ	R)A+%���� ��R�`JPL	�)A3%��Ք �tS�pJPN	�)A;%���� ��S��JPP	*AC%��� �tT��JPR	R*AK%��5� ��T��JPT	�*AS%��U� �tU��JPV	�*A[%��u� ��U��JPX	+Ac%���� �tV��JPZ	R+Ak%���� ��V��JP\	�+As%��Օ �tW��JP^	�+A{%��$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I$=��'��$��DғHzIO"�I�ىgv♝xf'�ىgv♝xf'�ىgv♝xf'�ىgv♝xf'�ىgv�Y�X���%��K��`<.�6x\�m���q	���l��%����%��Ģ�R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E    ���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�c)z,E���=���R�X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X�K�ciz,M���4=�����X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�    e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cz,C�e�=���2�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e S  �,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X���cYz,K�e�,=��ǲ�X��A���r�c9��Xz,=���A���r�c9��Xz,=���A���r�c9��Xz,=���A���r�c9��Xz,=���A���r�c9��Xz,=���A���r�c9��Xz,=���A���r�c9��Xz,=���A���r�c9��Xz,=���_��|���~�/�������~��o���_��׿��w_�����o�������Ň5��������_����y������Ӈu����~��_�?MgI     