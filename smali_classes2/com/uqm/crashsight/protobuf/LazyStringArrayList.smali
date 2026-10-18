.class public Lcom/uqm/crashsight/protobuf/LazyStringArrayList;
.super Lcom/uqm/crashsight/protobuf/AbstractProtobufList;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteStringListView;,
        Lcom/uqm/crashsight/protobuf/LazyStringArrayList$ByteArrayListView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/AbstractProtobufList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/uqm/crashsight/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final a:Lcom/uqm/crashsight/protobuf/LazyStringList;

.field private static final b:Lcom/uqm/crashsight/protobuf/LazyStringArrayList;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>()V

    .line 67
    sput-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->b:Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->b()V

    .line 75
    sput-object v0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a:Lcom/uqm/crashsight/protobuf/LazyStringList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 80
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/uqm/crashsight/protobuf/LazyStringList;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/LazyStringList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    .line 89
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/LazyStringArrayList;ILcom/uqm/crashsight/protobuf/ByteString;)Ljava/lang/Object;
    .locals 0

    .line 3260
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 3261
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;
    .locals 0

    .line 2270
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 2271
    iget-object p0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Object;)[B
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->e(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 0

    .line 61
    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->d(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/LazyStringArrayList;ILcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1

    .line 4152
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 4153
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4154
    iget p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method static synthetic b(Lcom/uqm/crashsight/protobuf/LazyStringArrayList;I[B)V
    .locals 1

    .line 3158
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 3159
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3160
    iget p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method private static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 275
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 277
    :cond_0
    instance-of v0, p0, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 278
    check-cast p0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 280
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/Internal;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 1

    .line 285
    instance-of v0, p0, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 286
    check-cast p0, Lcom/uqm/crashsight/protobuf/ByteString;

    return-object p0

    .line 287
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 288
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    return-object p0

    .line 290
    :cond_1
    check-cast p0, [B

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->a([B)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/Object;)[B
    .locals 1

    .line 295
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 296
    check-cast p0, [B

    return-object p0

    .line 297
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 298
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 300
    :cond_1
    check-cast p0, Lcom/uqm/crashsight/protobuf/ByteString;

    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/ByteString;->d()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 203
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 204
    iget v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    .line 205
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/ByteString;)V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 218
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public final bridge synthetic a()Z
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->a()Z

    move-result v0

    return v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 1

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 1146
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 1147
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1148
    iget p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 177
    instance-of v0, p2, Lcom/uqm/crashsight/protobuf/LazyStringList;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/uqm/crashsight/protobuf/LazyStringList;

    .line 178
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/LazyStringList;->d()Ljava/util/List;

    move-result-object p2

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 180
    iget p2, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic b(I)Lcom/uqm/crashsight/protobuf/Internal$ProtobufList;
    .locals 1

    .line 2102
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2106
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2107
    new-instance p1, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;

    invoke-direct {p1, v0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    .line 2103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 211
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->modCount:I

    return-void
.end method

.method public final d(I)Lcom/uqm/crashsight/protobuf/ByteString;
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 237
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->d(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/LazyStringList;
    .locals 1

    .line 1061
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    new-instance v0, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;

    invoke-direct {v0, p0}, Lcom/uqm/crashsight/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/uqm/crashsight/protobuf/LazyStringList;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final e(I)[B
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->e(Ljava/lang/Object;)[B

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 2112
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2113
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2114
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2115
    :cond_0
    instance-of v1, v0, Lcom/uqm/crashsight/protobuf/ByteString;

    if-eqz v1, :cond_2

    .line 2116
    check-cast v0, Lcom/uqm/crashsight/protobuf/ByteString;

    .line 2117
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->f()Ljava/lang/String;

    move-result-object v1

    .line 2118
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/ByteString;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 2123
    :cond_2
    check-cast v0, [B

    .line 2124
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Internal;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 2125
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Internal;->a([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2126
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/uqm/crashsight/protobuf/AbstractProtobufList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 1139
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c()V

    .line 1140
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1141
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/LazyStringArrayList;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
