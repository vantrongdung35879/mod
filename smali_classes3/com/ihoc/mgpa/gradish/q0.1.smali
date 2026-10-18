.class public Lcom/ihoc/mgpa/gradish/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ihoc/mgpa/gradish/q$a;


# static fields
.field private static final l:Ljava/lang/String;

.field private static volatile m:Lcom/ihoc/mgpa/gradish/q0;


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;

.field public c:Lcom/ihoc/mgpa/gradish/j;

.field private d:Ljava/util/HashMap;

.field private e:Lcom/ihoc/mgpa/gradish/t0;

.field private final f:Lcom/ihoc/mgpa/gradish/D;

.field private g:Lcom/ihoc/mgpa/gradish/U;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;

.field private j:Z

.field private final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ihoc/mgpa/gradish/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Predownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ihoc/mgpa/gradish/q0;->a:I

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/j;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/j;-><init>()V

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->c:Lcom/ihoc/mgpa/gradish/j;

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->h:Ljava/util/List;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->i:Ljava/util/List;

    .line 16
    iput-boolean v0, p0, Lcom/ihoc/mgpa/gradish/q0;->j:Z

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    .line 20
    new-instance v0, Lcom/ihoc/mgpa/gradish/D;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/D;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->f:Lcom/ihoc/mgpa/gradish/D;

    return-void
.end method

.method private a(Lcom/ihoc/mgpa/gradish/t0$b;Z)Lcom/ihoc/mgpa/gradish/q;
    .locals 9

    .line 132
    iget-object v3, p1, Lcom/ihoc/mgpa/gradish/t0$b;->c:Ljava/lang/String;

    .line 133
    iget-object v2, p1, Lcom/ihoc/mgpa/gradish/t0$b;->a:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    const-string v1, "none"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ihoc/mgpa/gradish/U;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    invoke-interface {v0, v3, v2}, Lcom/ihoc/mgpa/gradish/U;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 143
    :cond_0
    iget-object v5, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    .line 144
    sget-object v6, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[getUriTask]: find in rom channel: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    move-object v5, v4

    .line 148
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/q0;->h:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ihoc/mgpa/gradish/U;

    .line 150
    invoke-interface {v7}, Lcom/ihoc/mgpa/gradish/U;->a()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 151
    invoke-interface {v7, v3, v2}, Lcom/ihoc/mgpa/gradish/U;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 154
    sget-object v1, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[getUriTask]: find in thirdChannel: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v7, v5

    :goto_1
    move-object v5, v0

    .line 162
    const-string v0, "content"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    new-instance v0, Lcom/ihoc/mgpa/gradish/r0;

    invoke-direct {v0, p1, v5}, Lcom/ihoc/mgpa/gradish/r0;-><init>(Lcom/ihoc/mgpa/gradish/t0$b;Ljava/lang/String;)V

    .line 165
    new-instance v4, Lcom/ihoc/mgpa/gradish/q;

    invoke-direct {v4, v7, v0, p2}, Lcom/ihoc/mgpa/gradish/q;-><init>(Lcom/ihoc/mgpa/gradish/U;Lcom/ihoc/mgpa/gradish/r0;Z)V

    .line 166
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->c:Lcom/ihoc/mgpa/gradish/j;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/j;->c()V

    .line 167
    invoke-virtual {v4, p0}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/q$a;)V

    goto :goto_2

    .line 168
    :cond_4
    const-string v0, "/sdcard/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v4, Lcom/ihoc/mgpa/gradish/q;

    new-instance v1, Lcom/ihoc/mgpa/gradish/r0;

    invoke-direct {v1, p1, v0}, Lcom/ihoc/mgpa/gradish/r0;-><init>(Lcom/ihoc/mgpa/gradish/t0$b;Ljava/lang/String;)V

    invoke-direct {v4, v7, v1, p2}, Lcom/ihoc/mgpa/gradish/q;-><init>(Lcom/ihoc/mgpa/gradish/U;Lcom/ihoc/mgpa/gradish/r0;Z)V

    .line 171
    invoke-virtual {v4, p0}, Lcom/ihoc/mgpa/gradish/q;->a(Lcom/ihoc/mgpa/gradish/q$a;)V

    :cond_5
    :goto_2
    move-object p1, v4

    move-object v0, p0

    move v1, p2

    move-object v4, v5

    move-object v5, v7

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/ihoc/mgpa/gradish/q0;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/U;)V

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 80
    invoke-virtual {p0}, Lcom/ihoc/mgpa/gradish/q0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->e:Lcom/ihoc/mgpa/gradish/t0;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 84
    :cond_0
    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/t0;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    const-string v1, "none,-3"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string p1, "-3"

    return-object p1

    .line 89
    :cond_1
    sget-object v1, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v2, "Start to check cloud channel path."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v4}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v4

    const-string v5, " , in "

    if-eqz v4, :cond_3

    .line 96
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "predownload pkg file was found by channel "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 100
    :cond_3
    sget-object v4, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "predownload pkg file was not found by channel "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "can not find pkg file in cloud predownload path."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    const-string v1, "none,-4"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string p1, "-4"

    return-object p1

    .line 107
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    const-string v1, "none,-2"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string p1, "-2"

    return-object p1
.end method

.method private a(Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, v0, Lcom/ihoc/mgpa/gradish/q0;->j:Z

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/mgpa/gradish/q0;->a()Z

    move-result v2

    const-string v3, "NoFileName"

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/ihoc/mgpa/gradish/q0;->e:Lcom/ihoc/mgpa/gradish/t0;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 18
    :cond_0
    iget-object v4, v2, Lcom/ihoc/mgpa/gradish/t0;->a:Ljava/util/HashMap;

    .line 19
    iget-object v2, v2, Lcom/ihoc/mgpa/gradish/t0;->b:Ljava/util/HashMap;

    if-eqz v4, :cond_c

    .line 20
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gtz v5, :cond_1

    goto/16 :goto_2

    .line 24
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v6, 0x0

    if-le v5, v1, :cond_2

    .line 25
    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "predownpath\'s channel get from cloud is more than 1. "

    invoke-static {v7, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 31
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v1, :cond_4

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "channel\'s predownpaths get from cloud is more than 1, channel: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-nez v5, :cond_8

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/ihoc/mgpa/gradish/q0;->h()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 38
    sget-object v5, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string/jumbo v9, "support move File from gameCenter"

    invoke-static {v5, v9}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-direct/range {p0 .. p1}, Lcom/ihoc/mgpa/gradish/q0;->b(Z)Ljava/lang/String;

    move-result-object v5

    .line 40
    const-string v9, "-6"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    return-object v5

    .line 44
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 47
    sget-object v1, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    return-object v1

    :cond_7
    const/4 v5, 0x1

    goto :goto_0

    .line 52
    :cond_8
    sget-object v9, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v10, "[checkPreDownloadFilePath]: had searchUri."

    invoke-static {v9, v10}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    sget-object v9, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v10, "return config pre Download dirPath"

    invoke-static {v9, v10}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 58
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 59
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 60
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 61
    invoke-static {v13}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v13

    const-string v14, " , in "

    const-string v15, "predownload pkg file "

    if-eqz v13, :cond_a

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was found by channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v1, v0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v12

    .line 67
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " was not found by channel "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 72
    :cond_b
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "can not find pkg file in cloud predownload path."

    invoke-static {v2, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v1, v0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    const-string v2, "none,-4"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "-4"

    return-object v1

    .line 75
    :cond_c
    :goto_2
    sget-object v1, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v2, "get predownload channel path map null."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, v0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    const-string v2, "none,-3"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "-3"

    return-object v1

    .line 78
    :cond_d
    :goto_3
    iget-object v1, v0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    const-string v2, "none,-2"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "-2"

    return-object v1
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ihoc/mgpa/gradish/U;)V
    .locals 5

    .line 176
    const-string v0, "none"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "2"

    const-string v2, "1"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 178
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 179
    const-string v4, "fileName"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string p2, "fileMD5"

    invoke-virtual {v3, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string p2, "filePath"

    invoke-virtual {v3, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string p2, "action"

    invoke-virtual {v3, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo p2, "state"

    invoke-virtual {v3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 184
    const-string v2, "0"

    .line 186
    :cond_1
    const-string p1, "owner"

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p5, :cond_2

    .line 188
    const-string p1, ""

    goto :goto_1

    :cond_2
    invoke-interface {p5}, Lcom/ihoc/mgpa/gradish/U;->b()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "channel"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v3}, Lcom/ihoc/mgpa/gradish/t1;->h(Ljava/util/HashMap;)V

    return-void
.end method

.method private b(Z)Ljava/lang/String;
    .locals 10

    .line 54
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->e:Lcom/ihoc/mgpa/gradish/t0;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/t0;->b:Ljava/util/HashMap;

    .line 55
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    const-string v2, "-6"

    const-string v3, "none,-5"

    const-string v4, "NoFileName"

    const/4 v5, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-array p1, v5, [Ljava/lang/Object;

    const-string v0, "[fetchPreFileFromChannel]: no valid fileMover."

    invoke-static {v0, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/mgpa/gradish/t0$b;

    if-eqz v6, :cond_1

    if-nez v1, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    iget-wide v7, v1, Lcom/ihoc/mgpa/gradish/t0$b;->b:J

    invoke-virtual {p0, v6, v7, v8}, Lcom/ihoc/mgpa/gradish/q0;->a(Ljava/lang/String;J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 69
    sget-object v1, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[fetchPreFileFromChannel]: skip existing local file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/ihoc/mgpa/gradish/q0;->a(Lcom/ihoc/mgpa/gradish/t0$b;Z)Lcom/ihoc/mgpa/gradish/q;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ihoc/mgpa/gradish/r0;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ihoc/mgpa/gradish/r0;->a()Ljava/lang/String;

    move-result-object v7

    .line 78
    const-string v8, "content"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 79
    sget-object v7, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[fetchPreFileFromChannel]: add new task: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_5
    const-string v1, "/sdcard/"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v7

    .line 87
    :cond_6
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 88
    :goto_1
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v5, p1, :cond_7

    .line 89
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ihoc/mgpa/gradish/q;

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/q;->d()Lcom/ihoc/mgpa/gradish/r0;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/gradish/r0;->b(I)V

    add-int/lit8 v0, v5, 0x1

    .line 91
    invoke-virtual {p1, v0}, Lcom/ihoc/mgpa/gradish/r0;->a(I)V

    .line 92
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->f:Lcom/ihoc/mgpa/gradish/D;

    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->k:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ihoc/mgpa/gradish/q;

    invoke-virtual {p1, v1}, Lcom/ihoc/mgpa/gradish/D;->a(Lcom/ihoc/mgpa/gradish/q;)Z

    move v5, v0

    goto :goto_1

    .line 94
    :cond_7
    const-string p1, "1"

    return-object p1

    .line 97
    :cond_8
    sget-object p1, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v0, "[fetchPreFileFromChannel]: no one of preFile Uri found in channel."

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private b(Lcom/ihoc/mgpa/gradish/r0;II)V
    .locals 4

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v2, "fileName"

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/r0;->b()Lcom/ihoc/mgpa/gradish/t0$b;

    move-result-object v3

    iget-object v3, v3, Lcom/ihoc/mgpa/gradish/t0$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    const-string v2, "progress"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string/jumbo p2, "status"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string p2, "dir"

    sget-object p3, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string p2, "fileNum"

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/r0;->d()I

    move-result p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string p2, "currentIndex"

    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/r0;->c()I

    move-result p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    const-string p1, "CopyPreDownload"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string/jumbo p1, "{\"CopyPreDownload\":{\"fileName\":\"testFileName\",\"progress\":0,\"status\":-1}}"

    .line 16
    :goto_0
    sget-object p2, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "notifyCopyFileProgressToGame notifyInfo: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/ihoc/mgpa/gradish/s1;->b()Lcom/ihoc/mgpa/gradish/s1;

    move-result-object p2

    new-instance p3, Lcom/ihoc/mgpa/gradish/I;

    sget-object v0, Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;->COPY_PREDOWNLOAD_FROM_PROVIDER:Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;

    invoke-direct {p3, v0, p1}, Lcom/ihoc/mgpa/gradish/I;-><init>(Lcom/ihoc/mgpa/toolkit/constant/CallbackKey;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/ihoc/mgpa/gradish/s1;->a(Lcom/ihoc/mgpa/gradish/I;)V

    return-void
.end method

.method private c()I
    .locals 9

    .line 14
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->isPreDownloadFuncOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "PD: clean pd files, func is not open."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 18
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->n:Lcom/ihoc/mgpa/gradish/s0;

    if-nez v0, :cond_1

    .line 19
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "PD: clean pd files, get config null."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0

    .line 26
    :cond_1
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/AppUtil;->getAPPVersionCode()I

    move-result v0

    int-to-long v0, v0

    .line 27
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v2

    iget-object v2, v2, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v2, v2, Lcom/ihoc/mgpa/gradish/L$a;->n:Lcom/ihoc/mgpa/gradish/s0;

    iget-wide v2, v2, Lcom/ihoc/mgpa/gradish/s0;->a:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 29
    sget-object v4, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PD: clean pd files, do not clean when game\'code "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " < target code "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    return v0

    .line 32
    :cond_2
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->n:Lcom/ihoc/mgpa/gradish/s0;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/s0;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    goto/16 :goto_3

    .line 37
    :cond_3
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/L$a;->n:Lcom/ihoc/mgpa/gradish/s0;

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/s0;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    goto/16 :goto_2

    .line 42
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    sget-object v4, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PD: clean pd files, start to clean : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, -0x6

    return v0

    .line 49
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, -0x7

    return v0

    .line 52
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, -0x8

    return v0

    .line 55
    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_9

    const/16 v0, -0x9

    return v0

    .line 59
    :cond_9
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v5, v2, v3

    .line 60
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->isHidden()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    .line 63
    :cond_a
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 64
    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    if-nez v6, :cond_b

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    .line 67
    :cond_b
    iget v6, p0, Lcom/ihoc/mgpa/gradish/q0;->a:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/ihoc/mgpa/gradish/q0;->a:I

    .line 68
    invoke-static {v5}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 70
    iget-object v6, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v6, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PD: clean pd files, delete success, file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_c
    sget-object v6, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PD: clean pd files, delete failed, file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_d
    sget-object v6, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PD: clean pd files, this file is not in delete files, filename: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 80
    :cond_f
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 81
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "PD: clean pd files, no file need delete."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x5

    return v0

    .line 84
    :cond_10
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PD: clean pd files, total delete files: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 85
    :cond_11
    :goto_2
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "PD: clean pd files, get clean files from config failed."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0xe

    return v0

    .line 86
    :cond_12
    :goto_3
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "PD: clean pd files, get clean dirs from config failed."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x4

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->MAIN_VERCODE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v2}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->SUB_VERCODE:Lcom/ihoc/mgpa/toolkit/constant/KogKey;

    invoke-virtual {v3}, Lcom/ihoc/mgpa/toolkit/constant/KogKey;->getKeyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    const-string v4, "destDir"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/ihoc/mgpa/gradish/q;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {v2}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setMainVersionCode(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/model/DataRecorder;->setSubVersionCode(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to parse version info: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static f()Lcom/ihoc/mgpa/gradish/q0;
    .locals 2

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->m:Lcom/ihoc/mgpa/gradish/q0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ihoc/mgpa/gradish/q0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ihoc/mgpa/gradish/q0;->m:Lcom/ihoc/mgpa/gradish/q0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ihoc/mgpa/gradish/q0;

    invoke-direct {v1}, Lcom/ihoc/mgpa/gradish/q0;-><init>()V

    sput-object v1, Lcom/ihoc/mgpa/gradish/q0;->m:Lcom/ihoc/mgpa/gradish/q0;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->m:Lcom/ihoc/mgpa/gradish/q0;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ihoc/mgpa/gradish/r0;II)V
    .locals 2

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/ihoc/mgpa/gradish/q0;->b(Lcom/ihoc/mgpa/gradish/r0;II)V

    const/4 p2, 0x3

    if-ne p3, p2, :cond_0

    .line 127
    iget-object p2, p0, Lcom/ihoc/mgpa/gradish/q0;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ihoc/mgpa/gradish/U;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    invoke-virtual {p1}, Lcom/ihoc/mgpa/gradish/r0;->b()Lcom/ihoc/mgpa/gradish/t0$b;

    move-result-object v1

    iget-object v1, v1, Lcom/ihoc/mgpa/gradish/t0$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {p3, v0}, Lcom/ihoc/mgpa/gradish/U;->a(Ljava/util/List;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/q0;->c()I

    move-result p1

    .line 110
    sget-object p2, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PD: clean predownload file result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 112
    const-string/jumbo v0, "tag"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "clean_result"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget p1, p0, Lcom/ihoc/mgpa/gradish/q0;->a:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "total_num"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->isLackPermission(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "0"

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const-string v2, "read_sd"

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->isLackPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, v0

    :cond_1
    const-string/jumbo p1, "write_sd"

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    const-string v1, "clean_files"

    const-string v2, "clean_num"

    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    const-string v0, ";"

    invoke-static {p1, v0}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string p1, ""

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_1
    invoke-static {p2}, Lcom/ihoc/mgpa/gradish/t1;->k(Ljava/util/HashMap;)V

    return-void
.end method

.method public a()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "check predownload config start! "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->e:Lcom/ihoc/mgpa/gradish/t0;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    new-instance v0, Lcom/ihoc/mgpa/gradish/u0;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/u0;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/u0;->a()Lcom/ihoc/mgpa/gradish/C;

    move-result-object v1

    .line 5
    sget-object v3, Lcom/ihoc/mgpa/gradish/C;->e:Lcom/ihoc/mgpa/gradish/C;

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/u0;->c()Lcom/ihoc/mgpa/gradish/t0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/ihoc/mgpa/gradish/u0;->c()Lcom/ihoc/mgpa/gradish/t0;

    move-result-object v0

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->e:Lcom/ihoc/mgpa/gradish/t0;

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 12
    :cond_1
    const-string v1, "check predownload config, predownload config already exsit."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public a(Ljava/lang/String;J)Z
    .locals 4

    .line 190
    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    invoke-static {v3}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 198
    :cond_2
    const-string p2, ".pd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    const-string v0, ".apk"

    if-eqz p3, :cond_3

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    .line 203
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 204
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/ihoc/mgpa/gradish/q;->l:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 18
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get predownload path for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 22
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/q0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    .line 25
    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "get predownload dir code run exception, ple check it!"

    invoke-static {v2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const-string p1, "-5"

    .line 28
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 29
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "check predownload config success, run time: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public b()V
    .locals 9

    .line 30
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "PD: start to check predownload file."

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/ihoc/mgpa/gradish/L;->c()Lcom/ihoc/mgpa/gradish/L;

    move-result-object v0

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L;->c:Lcom/ihoc/mgpa/gradish/L$a;

    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/L$a;->i:Lcom/ihoc/mgpa/gradish/v0;

    if-eqz v0, :cond_4

    .line 32
    iget-object v0, v0, Lcom/ihoc/mgpa/gradish/v0;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {v4}, Lcom/ihoc/mgpa/toolkit/util/FileUtil;->checkFileExsits(Ljava/lang/String;)Z

    move-result v5

    .line 40
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 41
    const-string v7, "stage"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v7, "predown_path"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v7, "pkg_name"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_1

    goto :goto_2

    .line 44
    :cond_1
    const-string v8, "0"

    :goto_2
    const-string v3, "file_exsit"

    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v6}, Lcom/ihoc/mgpa/gradish/t1;->j(Ljava/util/HashMap;)V

    if-eqz v5, :cond_2

    .line 47
    sget-object v3, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PD: pkg file was found in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_2
    sget-object v3, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PD: pkg file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was not found in "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 53
    :cond_3
    sget-object v1, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v2, "PD: no pkg file in cloud config."

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v1, "Get predownload path with no file name. "

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/q0;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ihoc/mgpa/gradish/q0;->a(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const-string v2, "get predownload dir code run exception, ple check it!"

    invoke-static {v2, p1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    const-string p1, "-5"

    .line 12
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 13
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "check predownload config success, run time: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "none"

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    return-object v0

    .line 7
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 p1, 0x0

    .line 9
    aget-object p1, v0, p1

    :cond_2
    return-object p1
.end method

.method public d()V
    .locals 5

    .line 10
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/q0;->c()I

    move-result v0

    .line 11
    sget-object v1, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PD: clean predownload file result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 13
    const-string v2, "result"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string/jumbo v2, "tag"

    const-string v4, "2"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "clean_result"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget v0, p0, Lcom/ihoc/mgpa/gradish/q0;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "total_num"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->isLackPermission(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "1"

    if-eqz v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v4, "read_sd"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->isLackPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, v3

    :cond_1
    const-string/jumbo v0, "write_sd"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    const-string v2, "clean_files"

    const-string v4, "clean_num"

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->b:Ljava/util/ArrayList;

    const-string v3, ";"

    invoke-static {v0, v3}, Lcom/ihoc/mgpa/toolkit/util/ArrayUtil;->ArrayToString(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 23
    :cond_2
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, ""

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :goto_1
    invoke-static {v1}, Lcom/ihoc/mgpa/gradish/t1;->k(Ljava/util/HashMap;)V

    return-void
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 9
    const-string p1, "-3"

    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 13
    const-string p1, "-2"

    return-object p1

    .line 15
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    .line 17
    aget-object p1, v0, p1

    :cond_2
    return-object p1
.end method

.method public g()Lcom/ihoc/mgpa/gradish/t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->e:Lcom/ihoc/mgpa/gradish/t0;

    return-object v0
.end method

.method public h()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->e:Lcom/ihoc/mgpa/gradish/t0;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/ihoc/mgpa/gradish/t0;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-static {}, Lcom/ihoc/mgpa/toolkit/util/DeviceUtil;->getProductManufacture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "realme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "oneplus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 14
    :pswitch_0
    new-instance v0, Lcom/ihoc/mgpa/gradish/l1;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/l1;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    goto :goto_1

    .line 20
    :pswitch_1
    new-instance v0, Lcom/ihoc/mgpa/gradish/y1;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/y1;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    goto :goto_1

    .line 21
    :pswitch_2
    new-instance v0, Lcom/ihoc/mgpa/gradish/O;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/O;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    goto :goto_1

    .line 22
    :pswitch_3
    new-instance v0, Lcom/ihoc/mgpa/gradish/j0;

    invoke-direct {v0}, Lcom/ihoc/mgpa/gradish/j0;-><init>()V

    iput-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    .line 37
    :goto_1
    iget-object v0, p0, Lcom/ihoc/mgpa/gradish/q0;->g:Lcom/ihoc/mgpa/gradish/U;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ihoc/mgpa/gradish/U;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    .line 38
    :goto_2
    invoke-direct {p0}, Lcom/ihoc/mgpa/gradish/q0;->e()Z

    move-result v2

    .line 39
    sget-object v4, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[isFeatureSupportMoveFile]: romSupport: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " thirdChannelSupport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1

    .line 40
    :cond_a
    :goto_3
    sget-object v0, Lcom/ihoc/mgpa/gradish/q0;->l:Ljava/lang/String;

    const-string v2, "CloudConfig is not support to copyPreFile!"

    invoke-static {v0, v2}, Lcom/ihoc/mgpa/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4eb36700 -> :sswitch_5
        -0x47e95e19 -> :sswitch_4
        -0x37ba884a -> :sswitch_3
        -0x2d450b45 -> :sswitch_2
        0x3427a0 -> :sswitch_1
        0x373cac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
