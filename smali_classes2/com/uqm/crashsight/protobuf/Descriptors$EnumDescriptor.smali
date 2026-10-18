.class public final Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"

# interfaces
.implements Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;",
        "Lcom/uqm/crashsight/protobuf/Internal$EnumLiteMap<",
        "Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private final e:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private f:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

.field private final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1736
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    .line 1728
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->g:Ljava/util/WeakHashMap;

    .line 1737
    iput p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->a:I

    .line 1738
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 1739
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Ljava/lang/String;

    .line 1740
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 1741
    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 1743
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c()I

    move-result p3

    if-eqz p3, :cond_1

    .line 1749
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    .line 1750
    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->c()I

    move-result p3

    if-ge v0, p3, :cond_0

    .line 1751
    iget-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    new-instance p4, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p1, v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p4

    move-object v3, p2

    move-object v4, p0

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;IB)V

    aput-object p4, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1754
    :cond_0
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void

    .line 1746
    :cond_1
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;Ljava/lang/String;B)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 1583
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;
    .locals 3

    .line 1644
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1645
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    if-eqz v0, :cond_0

    .line 1646
    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic a(I)Lcom/uqm/crashsight/protobuf/Internal$EnumLite;
    .locals 0

    .line 1583
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;",
            ">;"
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->b(Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;
    .locals 3

    .line 1669
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1674
    :cond_0
    monitor-enter p0

    .line 1704
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1705
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 1707
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    :cond_1
    if-nez v0, :cond_2

    .line 1710
    new-instance v0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;Ljava/lang/Integer;B)V

    .line 1711
    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->g:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1613
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1619
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 2597
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method
