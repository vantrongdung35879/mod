.class final Lcom/uqm/crashsight/protobuf/FieldSet$Builder;
.super Ljava/lang/Object;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uqm/crashsight/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 928
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(I)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;-><init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 920
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    const/4 p1, 0x1

    .line 933
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->c:Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1005
    instance-of v0, p0, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->build()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/uqm/crashsight/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 955
    :goto_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 956
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 959
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1

    .line 1215
    invoke-static {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1217
    invoke-virtual {p0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->a()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object p0

    sget-object v0, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne p0, v0, :cond_0

    instance-of p0, p1, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    if-eqz p0, :cond_0

    return-void

    .line 1221
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Map$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 965
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1260
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;

    .line 1261
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 1262
    instance-of v1, p1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v1, :cond_0

    .line 1263
    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyField;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    .line 1266
    :cond_0
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1267
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1272
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1274
    :cond_2
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1275
    :cond_3
    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_6

    .line 1276
    invoke-virtual {p0, v0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1278
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1281
    :cond_4
    instance-of v2, v1, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    if-eqz v2, :cond_5

    .line 1282
    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    goto :goto_1

    .line 1284
    :cond_5
    check-cast v1, Lcom/uqm/crashsight/protobuf/MessageLite;

    .line 1286
    invoke-interface {v1}, Lcom/uqm/crashsight/protobuf/MessageLite;->toBuilder()Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object v1

    check-cast p1, Lcom/uqm/crashsight/protobuf/MessageLite;

    invoke-interface {v0, v1, p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->a(Lcom/uqm/crashsight/protobuf/MessageLite$Builder;Lcom/uqm/crashsight/protobuf/MessageLite;)Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    move-result-object p1

    .line 1287
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;->build()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    .line 1288
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1292
    :cond_6
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private static c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p1

    .line 973
    :cond_0
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->g()Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;->i:Lcom/uqm/crashsight/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_6

    .line 974
    invoke-interface {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 975
    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_4

    .line 981
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    .line 982
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 983
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 984
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_2

    if-ne p0, p1, :cond_1

    .line 991
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    .line 993
    :cond_1
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    .line 976
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Repeated field should contains a List but actually contains type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 998
    :cond_5
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    return-object p1
.end method

.method private d()V
    .locals 2

    .line 1060
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->c:Z

    if-nez v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Z)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    .line 1062
    iput-boolean v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->c:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    invoke-static {}, Lcom/uqm/crashsight/protobuf/FieldSet;->b()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 941
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->c:Z

    .line 942
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    .line 943
    iget-boolean v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    if-eqz v2, :cond_1

    .line 945
    invoke-static {v1, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Z)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v1

    .line 946
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V

    .line 948
    :cond_1
    new-instance v2, Lcom/uqm/crashsight/protobuf/FieldSet;

    invoke-direct {v2, v1, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;-><init>(Lcom/uqm/crashsight/protobuf/SmallSortedMap;B)V

    .line 949
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b:Z

    invoke-static {v2, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet;Z)Z

    return-object v2
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1130
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    if-eqz v0, :cond_0

    .line 1131
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d()V

    .line 1133
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    .line 1134
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1162
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d()V

    .line 1163
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1168
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    if-nez v0, :cond_1

    instance-of v0, p3, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    .line 1170
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1175
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 1176
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1172
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 1164
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1072
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d()V

    .line 1073
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1074
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1083
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1084
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 1085
    iget-boolean v4, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    if-nez v4, :cond_1

    instance-of v3, v3, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    goto :goto_0

    :cond_2
    move-object p2, v0

    goto :goto_3

    .line 1075
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1089
    :cond_4
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 1092
    :goto_3
    instance-of v0, p2, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v0, :cond_5

    .line 1093
    iput-boolean v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b:Z

    .line 1095
    :cond_5
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    .line 1097
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 1249
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d()V

    const/4 v0, 0x0

    .line 1250
    :goto_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet;)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1251
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet;)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    :cond_0
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet;)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1254
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1033
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1034
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1046
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 1047
    invoke-static {p1, v0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1142
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1152
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1150
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 1143
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1019
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b:Z

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/SmallSortedMap;Z)Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    move-result-object v0

    .line 1021
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a()V

    goto :goto_0

    .line 1024
    :cond_0
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/SmallSortedMap;)V

    :goto_0
    return-object v0

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1185
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d()V

    .line 1186
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1191
    iget-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/uqm/crashsight/protobuf/MessageLite$Builder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d:Z

    .line 1193
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a(Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 1195
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1, v0}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1201
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 1204
    :goto_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1187
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final c(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1053
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/LazyField;

    if-eqz v0, :cond_0

    .line 1054
    check-cast p1, Lcom/uqm/crashsight/protobuf/LazyField;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/LazyField;->a()Lcom/uqm/crashsight/protobuf/MessageLite;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1232
    :goto_0
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->c()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1233
    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1237
    :cond_1
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1238
    invoke-static {v2}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final d(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1102
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->d()V

    .line 1103
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    iget-object p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->a:Lcom/uqm/crashsight/protobuf/SmallSortedMap;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/SmallSortedMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1105
    iput-boolean p1, p0, Lcom/uqm/crashsight/protobuf/FieldSet$Builder;->b:Z

    :cond_0
    return-void
.end method
