PGDMP  0                    |           apple    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16490    apple    DATABASE     x   CREATE DATABASE apple WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE apple;
                postgres    false            �            1259    16495    image    TABLE     �   CREATE TABLE public.image (
    image_id integer NOT NULL,
    color_id integer,
    image_1 character varying(255) NOT NULL,
    image_2 character varying(255) NOT NULL,
    image_3 character varying(255) NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16500    image_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.image_image_id_seq;
       public          postgres    false    217                       0    0    image_image_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.image_image_id_seq OWNED BY public.image.image_id;
          public          postgres    false    218            g           2604    16524    image image_id    DEFAULT     p   ALTER TABLE ONLY public.image ALTER COLUMN image_id SET DEFAULT nextval('public.image_image_id_seq'::regclass);
 =   ALTER TABLE public.image ALTER COLUMN image_id DROP DEFAULT;
       public          postgres    false    218    217            �          0    16495    image 
   TABLE DATA           N   COPY public.image (image_id, color_id, image_1, image_2, image_3) FROM stdin;
    public          postgres    false    217   N                  0    0    image_image_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.image_image_id_seq', 90, true);
          public          postgres    false    218            i           2606    16532    image image_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (image_id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            j           2606    16548    image image_color_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_color_id_fkey FOREIGN KEY (color_id) REFERENCES public.color(color_id);
 C   ALTER TABLE ONLY public.image DROP CONSTRAINT image_color_id_fkey;
       public          postgres    false    217            �     x��Z�r�8|���  �K^���+K*��$�:q�9 ����{�$��#�|ݿ������z:��_����yx7�i����
��><�[��1��W���Q���ƩT��RpGΫ;p>�G���(A��S�,��W���R�y��-~�KwЩ蟯���X�[���{�Y^�
����x�Q�����b�;�N��!AR	ϧi8��Pu
��Y@=���R'ࡲ?�1[���4�#PX���+��GLٝ�/sP���o�Ю��y~-ϊ�G�(�tR����ҕ�&���؁!=Θ�Hj�9F�A�h� ���^l�U' o�&�!Mn���$��f����4��b��N��$�`H�[0�V���D�Vo�`Ig[PΟ��P�wX��?X�%��
�N˳Bg)Pu:)����t��(�F�yg�,�{,UJ
ܦ,K�����%��_�����"�Mk�E�;�L����6?R�;�Ԃ�2]A �4{�Laת����.�`�|PJ�Y!�S����	�@�.����y��`i.��HK
��1X�x���H_��NA�5�p4�0A~tU� ΂�Q�Ҙ�a�_��΁�I���HPu�1�yp44�Ϭ�ɪc"�"	8� �b��>;U]�ai�h��ɲgDx���G��<Uq��o�G\�����sE�I�Vq�{pL'f��e|��ܡ~�i�¾h�G�kh�3]|1��6��i�c��9D'iRL�ׂgZ>S@�x$p��l��<�q��V�	�����F����̸2�M}����W���"�� n{�?�<�p������)������#��RP.�;H!�ӝ����E�@�Y�J݌�x.2�"%ǩ�u��}���������dM�~��BG�3��c��T'��D��hb�h�T�~f��BG��~+-V~|}���@#-:i���1L�*1d����x�hza�4|f�:	�O�t4�r�r�!]�+���ݝ����r[E�h/穲�Dx���t	:ڭy�n?�Ҫ��dӡYz��:�U+gذ���r�/ZWB�
\�9L�_�����p�l�Q��N҄�H����S@�#dx�F27�	
�*N��MY6A�I��M��Q�C��4h�Q�>㙈�\��3��J�T��k*���8��l���i�6K���K�vSH����!pa�(ڰ@\���2n!r٥=�
{��k�
g�h Ҕ��6ɲ�o!����
��@��G���(�EBau*��D�f���%�S�L���H3��ّE֩��� �T�,i:�0u��`�i\���3?U�"�I2�Ki�穚�B�B�"m�<Ys�Bh�H�]w��s���P���d��$�g��KuN�Vι�Bb<�=,�[.}�$��/F����e��hU�JDb=$&�2���6�d�L$&.�8oJ�6e�|�$&7�K�����j��x����؜�f��'u���-��(�."Ab�H�Sگ*m�t�{Hl@�%�}���)��u���+��k�w���~���ۗ������b     