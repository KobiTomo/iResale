PGDMP  /                    |           apple    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16490    apple    DATABASE     x   CREATE DATABASE apple WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE apple;
                postgres    false            �            1259    24986    post    TABLE     �  CREATE TABLE public.post (
    id integer NOT NULL,
    name character varying(255),
    city character varying(255),
    number character varying(20),
    model character varying(255),
    memory character varying(255),
    color character varying(255),
    condition character varying(255),
    detail character varying(45),
    price money,
    "time" timestamp without time zone
);
    DROP TABLE public.post;
       public         heap    postgres    false            �            1259    24985    post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.post_id_seq;
       public          postgres    false    226                       0    0    post_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;
          public          postgres    false    225            g           2604    24989    post id    DEFAULT     b   ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);
 6   ALTER TABLE public.post ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �          0    24986    post 
   TABLE DATA           n   COPY public.post (id, name, city, number, model, memory, color, condition, detail, price, "time") FROM stdin;
    public          postgres    false    226   W                  0    0    post_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.post_id_seq', 172, true);
          public          postgres    false    225            i           2606    24993    post post_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public            postgres    false    226            �   �   x�}�=
�0����@�K�����U�\D
EKE�	�HQ(�X{��{_�%	dx���& :RF+: ��-�|J@��W-F��d�0�ـ�(��	Оr��5]�(m�E�R9�;(m��}[�G�%�f�m�x��QJ��!�p�L/��_��;P����H�*���Ď�J��vHm؉gI�_E��|�P>�t��6�Iҋ���7�u-˺�M�"     