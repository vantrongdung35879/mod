.class Lcom/uqm/crashsight/protobuf/MapFieldSchemaFull;
.super Ljava/lang/Object;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/MapFieldSchema;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 1097
    :cond_0
    check-cast p2, Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/MapField;->a()Ljava/util/Map;

    move-result-object p2

    .line 1098
    check-cast p3, Lcom/uqm/crashsight/protobuf/MapEntry;

    .line 1099
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1103
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1105
    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->f(I)I

    move-result v2

    .line 1108
    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/MapEntry;->d()Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1107
    invoke-static {v3, v4, v1}, Lcom/uqm/crashsight/protobuf/MapEntryLite;->a(Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 1106
    invoke-static {v1}, Lcom/uqm/crashsight/protobuf/CodedOutputStream;->k(I)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1075
    check-cast p1, Lcom/uqm/crashsight/protobuf/MapField;

    .line 1076
    check-cast p2, Lcom/uqm/crashsight/protobuf/MapField;

    .line 1077
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->d()Lcom/uqm/crashsight/protobuf/MapField;

    .line 1080
    :cond_0
    invoke-virtual {p1, p2}, Lcom/uqm/crashsight/protobuf/MapField;->a(Lcom/uqm/crashsight/protobuf/MapField;)V

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 39
    check-cast p1, Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->b()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    check-cast p1, Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapField;->i()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 54
    move-object v0, p1

    check-cast v0, Lcom/uqm/crashsight/protobuf/MapField;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/MapField;->h()V

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-static {p1}, Lcom/uqm/crashsight/protobuf/MapField;->b(Lcom/uqm/crashsight/protobuf/MapEntry;)Lcom/uqm/crashsight/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/uqm/crashsight/protobuf/MapEntryLite$Metadata<",
            "**>;"
        }
    .end annotation

    .line 65
    check-cast p1, Lcom/uqm/crashsight/protobuf/MapEntry;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/MapEntry;->d()Lcom/uqm/crashsight/protobuf/MapEntry$Metadata;

    move-result-object p1

    return-object p1
.end method
