.class public Lcom/tencent/qmsp/sdk/c/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qmsp/sdk/c/j$a;
    }
.end annotation


# static fields
.field private static final c:[[B


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/c/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x7

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    new-array v4, v0, [B

    fill-array-data v4, :array_2

    const/4 v5, 0x2

    new-array v6, v5, [B

    fill-array-data v6, :array_3

    const/4 v7, 0x4

    new-array v8, v7, [B

    fill-array-data v8, :array_4

    const/4 v9, 0x5

    new-array v10, v9, [B

    fill-array-data v10, :array_5

    new-array v11, v7, [B

    fill-array-data v11, :array_6

    new-array v12, v7, [B

    fill-array-data v12, :array_7

    new-array v13, v9, [B

    fill-array-data v13, :array_8

    const/4 v14, 0x3

    new-array v15, v14, [B

    fill-array-data v15, :array_9

    new-array v2, v0, [B

    fill-array-data v2, :array_a

    const/16 v0, 0xb

    new-array v0, v0, [[B

    const/16 v16, 0x0

    aput-object v1, v0, v16

    const/4 v1, 0x1

    aput-object v3, v0, v1

    aput-object v4, v0, v5

    aput-object v6, v0, v14

    aput-object v8, v0, v7

    aput-object v10, v0, v9

    const/4 v1, 0x6

    aput-object v11, v0, v1

    const/4 v1, 0x7

    aput-object v12, v0, v1

    const/16 v1, 0x8

    aput-object v13, v0, v1

    const/16 v1, 0x9

    aput-object v15, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qmsp/sdk/c/j;->c:[[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x43t
        -0x4at
        0x43t
        0x2t
        0x32t
        0x75t
        -0x12t
    .end array-data

    :array_1
    .array-data 1
        0x33t
        0x75t
        -0x5ft
        0x53t
        0x27t
        0x34t
        0x79t
    .end array-data

    :array_2
    .array-data 1
        0x9t
        0x79t
        -0x4ft
        0x65t
        0x20t
        0x2ft
        0x65t
        -0x1ct
    .end array-data

    :array_3
    .array-data 1
        0x2ct
        0x74t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x31t
        0x69t
        -0x5dt
        0x45t
    .end array-data

    :array_5
    .array-data 1
        0x23t
        0x7ct
        -0x4et
        0x47t
        0x3dt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x35t
        0x71t
        -0x59t
        0x48t
    .end array-data

    :array_7
    .array-data 1
        0x2bt
        0x71t
        -0x42t
        0x45t
    .end array-data

    :array_8
    .array-data 1
        0x33t
        0x71t
        -0x41t
        0x55t
        0x2bt
    .end array-data

    nop

    :array_9
    .array-data 1
        0x33t
        0x75t
        -0x5ft
    .end array-data

    :array_a
    .array-data 1
        0x14t
        0x7dt
        -0x60t
        0x50t
        0x60t
        0x3ft
        0x76t
        -0x17t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qmsp/sdk/c/j;->b:I

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tencent/qmsp/sdk/c/j;->a(Ljava/lang/String;I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/tencent/qmsp/sdk/c/j;->b:I

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    :cond_1
    return-void
.end method

.method private a(Lorg/w3c/dom/Element;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private a(Ljava/lang/String;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/c/j$a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qmsp/sdk/c/m;

    invoke-direct {v0}, Lcom/tencent/qmsp/sdk/c/m;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/tencent/qmsp/sdk/c/m;->a(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qmsp/sdk/c/j;->a([BI)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2
.end method

.method private a([BI)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/c/j$a;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/j;->a(Lorg/w3c/dom/Element;)I

    move-result v0

    if-eqz v0, :cond_6

    if-le v0, p2, :cond_0

    goto :goto_3

    :cond_0
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v5}, Lcom/tencent/qmsp/sdk/c/j;->a(Lorg/w3c/dom/Node;)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p1

    :cond_6
    :goto_3
    :try_start_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object p1

    :catch_2
    move-exception p1

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_3
    move-exception p1

    move-object v2, v1

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    throw p1
.end method

.method private a(Lorg/w3c/dom/Node;)Lcom/tencent/qmsp/sdk/c/j$a;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lcom/tencent/qmsp/sdk/c/j$a;

    invoke-direct {v2}, Lcom/tencent/qmsp/sdk/c/j$a;-><init>()V

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge v4, v3, :cond_8

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    goto :goto_1

    :cond_3
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/tencent/qmsp/sdk/c/j$a;->b:I

    goto :goto_1

    :cond_4
    invoke-direct {p0, v6}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/tencent/qmsp/sdk/c/j$a;->c:I

    goto :goto_1

    :cond_5
    const/4 v6, 0x6

    invoke-direct {p0, v6}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v7, v2, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-object v7, v2, Lcom/tencent/qmsp/sdk/c/j$a;->d:Ljava/lang/String;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    if-eq v5, v6, :cond_9

    return-object v0

    :cond_9
    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/j;->b(Lorg/w3c/dom/Node;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/c/j$a;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/tencent/qmsp/sdk/c/j;->a(ILjava/util/List;)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p3, Lcom/tencent/qmsp/sdk/c/m;

    invoke-direct {p3}, Lcom/tencent/qmsp/sdk/c/m;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/tencent/qmsp/sdk/c/m;->a(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private a(ILjava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/c/j$a;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "UTF-8"

    :try_start_1
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/qmsp/sdk/c/j$a;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p2, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p2, Lcom/tencent/qmsp/sdk/c/j$a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p2, Lcom/tencent/qmsp/sdk/c/j$a;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v5, 0x9

    invoke-direct {p0, v5}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/tencent/qmsp/sdk/c/j$a;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v5

    iget-object p2, p2, Lcom/tencent/qmsp/sdk/c/j$a;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v5, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, v3}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p1

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v0

    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    throw p1
.end method

.method private b(Lorg/w3c/dom/Node;)Landroid/os/Bundle;
    .locals 7

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/qmsp/sdk/c/j;->c:[[B

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/tencent/qmsp/sdk/f/h;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/qmsp/sdk/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/tencent/qmsp/sdk/c/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/j;->d(I)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private d(I)Lcom/tencent/qmsp/sdk/c/j$a;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qmsp/sdk/c/j$a;

    iget v2, v1, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(I)Lcom/tencent/qmsp/sdk/c/j$a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/j;->d(I)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object p1

    return-object p1
.end method

.method public a(IZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qmsp/sdk/c/j;->d(I)Lcom/tencent/qmsp/sdk/c/j$a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/j;->c()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/tencent/qmsp/sdk/c/j;->b:I

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qmsp/sdk/c/j;->a(Ljava/lang/String;ILjava/util/List;)Z

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 3

    invoke-direct {p0}, Lcom/tencent/qmsp/sdk/c/j;->c()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qmsp/sdk/c/j;->b:I

    iget-object v2, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qmsp/sdk/c/j;->a(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/tencent/qmsp/sdk/c/j$a;Z)Z
    .locals 1

    iget v0, p1, Lcom/tencent/qmsp/sdk/c/j$a;->a:I

    invoke-direct {p0, v0}, Lcom/tencent/qmsp/sdk/c/j;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qmsp/sdk/c/j;->a()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qmsp/sdk/c/j$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qmsp/sdk/c/j;->a:Ljava/util/List;

    return-object v0
.end method
