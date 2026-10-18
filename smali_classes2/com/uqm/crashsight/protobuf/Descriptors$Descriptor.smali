.class public final Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;
.super Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uqm/crashsight/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Descriptor"
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

.field private final e:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private final f:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

.field private final g:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

.field private final h:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private final i:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

.field private final j:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;


# direct methods
.method private constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 859
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    .line 860
    iput p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:I

    .line 861
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    .line 862
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Ljava/lang/String;

    .line 863
    iput-object p2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    .line 864
    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 866
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->j:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    const/4 p3, 0x0

    .line 867
    :goto_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 868
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->j:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    new-instance v7, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V

    aput-object v7, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    const/4 p3, 0x0

    .line 872
    :goto_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->e()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 873
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0, p3}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V

    aput-object v1, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 876
    :cond_1
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    const/4 p3, 0x0

    .line 877
    :goto_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->f()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 878
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    new-instance v7, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V

    aput-object v7, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 881
    :cond_2
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    const/4 p3, 0x0

    .line 882
    :goto_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c()I

    move-result p4

    if-ge p3, p4, :cond_3

    .line 883
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v8, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZB)V

    aput-object v8, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 886
    :cond_3
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d()I

    move-result p3

    new-array p3, p3, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->i:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    const/4 p3, 0x0

    .line 887
    :goto_4
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->d()I

    move-result p4

    if-ge p3, p4, :cond_4

    .line 888
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->i:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v8, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, p3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IZB)V

    aput-object v8, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_4
    const/4 p3, 0x0

    .line 891
    :goto_5
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->h()I

    move-result p4

    if-ge p3, p4, :cond_5

    .line 892
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->j:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    aget-object p4, p4, p3

    invoke-virtual {p4}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->f()I

    move-result v1

    new-array v1, v1, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-static {p4, v1}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 893
    iget-object p4, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->j:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    aget-object p4, p4, p3

    invoke-static {p4, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;I)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 895
    :cond_5
    :goto_6
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->c()I

    move-result p3

    if-ge v0, p3, :cond_7

    .line 896
    iget-object p3, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->u()Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 898
    invoke-static {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    move-result-object p4

    invoke-static {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;->b(Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;)I

    move-result p3

    iget-object v1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    aput-object v1, p4, p3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 902
    :cond_7
    invoke-static {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 p3, 0x0

    .line 629
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;-><init>(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 826
    invoke-direct {p0, v0}, Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;-><init>(B)V

    const/16 v1, 0x2e

    .line 829
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 831
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 832
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 830
    :cond_0
    const-string v1, ""

    move-object v2, p1

    .line 834
    :goto_0
    iput v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->a:I

    .line 836
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->k()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v3

    .line 837
    invoke-virtual {v3, v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v2

    .line 839
    invoke-static {}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->g()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->a(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v3

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->b(I)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v3

    .line 838
    invoke-virtual {v2, v3}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;->a(Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;

    move-result-object v2

    .line 840
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$Builder;->a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    iput-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    .line 841
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 842
    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->e:Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 844
    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    .line 845
    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->g:[Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    .line 846
    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 847
    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->i:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 848
    new-array p1, v0, [Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->j:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    .line 851
    new-instance p1, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-direct {p1, v1, p0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;-><init>(Ljava/lang/String;Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V

    iput-object p1, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 629
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->k()V

    return-void
.end method

.method private k()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 908
    invoke-direct {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->k()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 912
    invoke-static {v4}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->i:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 916
    invoke-static {v3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 3

    .line 766
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Ljava/lang/String;)Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    instance-of v0, p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    if-eqz v0, :cond_0

    .line 768
    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)Z
    .locals 3

    .line 722
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 723
    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->b()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->d()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;->a(Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;)Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;->a(Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/uqm/crashsight/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->d:Lcom/uqm/crashsight/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public final e()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->j()Lcom/uqm/crashsight/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->h:[Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->j:[Lcom/uqm/crashsight/protobuf/Descriptors$OneofDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->f:[Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic j()Lcom/uqm/crashsight/protobuf/Message;
    .locals 1

    .line 1653
    iget-object v0, p0, Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;->b:Lcom/uqm/crashsight/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method
