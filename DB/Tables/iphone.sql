PGDMP                      |           apple    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16490    apple    DATABASE     x   CREATE DATABASE apple WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE apple;
                postgres    false            �            1259    16501    iphone    TABLE     o   CREATE TABLE public.iphone (
    iphone_id integer NOT NULL,
    model_name character varying(255) NOT NULL
);
    DROP TABLE public.iphone;
       public         heap    postgres    false            �            1259    16504    iphone_iphone_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iphone_iphone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.iphone_iphone_id_seq;
       public          postgres    false    219                       0    0    iphone_iphone_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.iphone_iphone_id_seq OWNED BY public.iphone.iphone_id;
          public          postgres    false    220            g           2604    16525    iphone iphone_id    DEFAULT     t   ALTER TABLE ONLY public.iphone ALTER COLUMN iphone_id SET DEFAULT nextval('public.iphone_iphone_id_seq'::regclass);
 ?   ALTER TABLE public.iphone ALTER COLUMN iphone_id DROP DEFAULT;
       public          postgres    false    220    219            �          0    16501    iphone 
   TABLE DATA           7   COPY public.iphone (iphone_id, model_name) FROM stdin;
    public          postgres    false    219   �
                  0    0    iphone_iphone_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.iphone_iphone_id_seq', 19, true);
          public          postgres    false    220            i           2606    16534    iphone iphone_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.iphone
    ADD CONSTRAINT iphone_pkey PRIMARY KEY (iphone_id);
 <   ALTER TABLE ONLY public.iphone DROP CONSTRAINT iphone_pkey;
       public            postgres    false    219            �   �   x�U�1
�@D��)�	$㮉�9������B�B���������޼�1<y�X�Iz�;��wXeio=��&qQ�^pͷ��ut%ey�ك��l2!���4:��ML�T��#zւ�Ԋ{~?`��-��"D��
�U�     