PGDMP  "                    |           apple    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16490    apple    DATABASE     x   CREATE DATABASE apple WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE apple;
                postgres    false            �            1259    16491    color    TABLE     �   CREATE TABLE public.color (
    color_id integer NOT NULL,
    iphone_id integer,
    color_name character varying(50) NOT NULL,
    color_he character varying(255)
);
    DROP TABLE public.color;
       public         heap    postgres    false            �            1259    16494    color_color_id_seq    SEQUENCE     �   CREATE SEQUENCE public.color_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.color_color_id_seq;
       public          postgres    false    215                       0    0    color_color_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.color_color_id_seq OWNED BY public.color.color_id;
          public          postgres    false    216            g           2604    16523    color color_id    DEFAULT     p   ALTER TABLE ONLY public.color ALTER COLUMN color_id SET DEFAULT nextval('public.color_color_id_seq'::regclass);
 =   ALTER TABLE public.color ALTER COLUMN color_id DROP DEFAULT;
       public          postgres    false    216    215            �          0    16491    color 
   TABLE DATA           J   COPY public.color (color_id, iphone_id, color_name, color_he) FROM stdin;
    public          postgres    false    215                     0    0    color_color_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.color_color_id_seq', 180, true);
          public          postgres    false    216            i           2606    16530    color color_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (color_id);
 :   ALTER TABLE ONLY public.color DROP CONSTRAINT color_pkey;
       public            postgres    false    215            j           2606    16543    color color_iphone_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_iphone_id_fkey FOREIGN KEY (iphone_id) REFERENCES public.iphone(iphone_id);
 D   ALTER TABLE ONLY public.color DROP CONSTRAINT color_iphone_id_fkey;
       public          postgres    false    215            �   �  x���[n�@��g�b乏�����4��Ru��.��64��@9���!J����&��ɲ�5�AW�ފ�+}L7�g��M�Ȫ���PB���͹H���3eVZ�)�V�Oڝ�v���7�Hw�>�����82�CZS]�<�b�Z�t�B�5=��+� ��X��>8��8Z�}݉�D�b� t�t��L��tz!�F0���VB��HzН6T�����1G^TrE�0��XP�K�u�Ţ���v�I�D���4�I���H�7s��~�X���h��$"#��t���c(x����i4�}8��{%��rf�p��r8w� ��E�
�CH�Bڻ@�� Y��IԌx��.��H$9��ȞT$eV�Ĭ��~�aI��rض�0l�ô9��xD#sN����X�[\���$�B��ʘ�h�t�v�Amq����q{x�*��ޤG��-uę���*Z޶�M;+؍(���#���h?/q4�j�z���(I�O҆a�{,���g����(���e{܌�[�6�۷t+��/qt����:��棠k��:�	s�4�"I���/�c �N���T��qo�����$��i���n�o�.��K��X����1��dU��ְ������-�Y՚�	��N�DE=L��~%�|_��w     