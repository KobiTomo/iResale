PGDMP      	                |           apple    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16490    apple    DATABASE     x   CREATE DATABASE apple WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE apple;
                postgres    false            �            1259    16515    price    TABLE     �   CREATE TABLE public.price (
    price_id integer NOT NULL,
    iphone_id integer,
    memory_id integer,
    price money NOT NULL
);
    DROP TABLE public.price;
       public         heap    postgres    false            �            1259    16518    price_price_id_seq    SEQUENCE     �   CREATE SEQUENCE public.price_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.price_price_id_seq;
       public          postgres    false    223                       0    0    price_price_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.price_price_id_seq OWNED BY public.price.price_id;
          public          postgres    false    224            g           2604    16527    price price_id    DEFAULT     p   ALTER TABLE ONLY public.price ALTER COLUMN price_id SET DEFAULT nextval('public.price_price_id_seq'::regclass);
 =   ALTER TABLE public.price ALTER COLUMN price_id DROP DEFAULT;
       public          postgres    false    224    223            �          0    16515    price 
   TABLE DATA           F   COPY public.price (price_id, iphone_id, memory_id, price) FROM stdin;
    public          postgres    false    223   g                  0    0    price_price_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.price_price_id_seq', 60, true);
          public          postgres    false    224            i           2606    16540    price price_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (price_id);
 :   ALTER TABLE ONLY public.price DROP CONSTRAINT price_pkey;
       public            postgres    false    223            j           2606    16558    price price_iphone_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_iphone_id_fkey FOREIGN KEY (iphone_id) REFERENCES public.iphone(iphone_id);
 D   ALTER TABLE ONLY public.price DROP CONSTRAINT price_iphone_id_fkey;
       public          postgres    false    223            k           2606    16563    price price_memory_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_memory_id_fkey FOREIGN KEY (memory_id) REFERENCES public.memory_size(memory_id);
 D   ALTER TABLE ONLY public.price DROP CONSTRAINT price_memory_id_fkey;
       public          postgres    false    223            �   �  x�]��m�!�������]�4w���I����/�)� �`Bot>������1^|~r���)	�
�����y�̿����?൉h�c��54���ZUH�T(�Eď�$��f��.��:q��W��
�&�IF~5�w��%�8ș��:ӹ�gu�@��=n��:3�;�Ȗ��D<�u��4�ء��%uC��1�)�|FBЎU3�r�Pw%����N�zUØ�J=�����f�eA�ՙC�N��aǳ�ζ����ٙ4�Iw��ҙ�T�e�<��B��fP�F����YZc��SW)U5�z���uCw��4m�K��l9!#hg��_chg�~M�ٛ<;3�j���1�f6��lBg���ϱu�u�_k74��e�9B�(�L����z� 9}$g     