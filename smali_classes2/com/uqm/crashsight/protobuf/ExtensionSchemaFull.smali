.class final Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull;
.super Lcom/uqm/crashsight/protobuf/ExtensionSchema;
.source "CrashSight"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uqm/crashsight/protobuf/ExtensionSchema<",
        "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull;->a()J

    move-result-wide v0

    sput-wide v0, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull;->a:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/uqm/crashsight/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method

.method private static a()J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()J"
        }
    .end annotation

    .line 49
    :try_start_0
    const-class v0, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/reflect/Field;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 52
    :catchall_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to lookup extension field offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 63
    sget-wide v0, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull;->a:J

    invoke-static {p1, v0, v1}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uqm/crashsight/protobuf/FieldSet;

    return-object p1
.end method

.method final a(Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/MessageLite;I)Ljava/lang/Object;
    .locals 0

    .line 499
    check-cast p1, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;

    check-cast p2, Lcom/uqm/crashsight/protobuf/Message;

    .line 500
    invoke-interface {p2}, Lcom/uqm/crashsight/protobuf/Message;->getDescriptorForType()Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/uqm/crashsight/protobuf/ExtensionRegistry;->a(Lcom/uqm/crashsight/protobuf/Descriptors$Descriptor;I)Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Reader;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;TUB;",
            "Lcom/uqm/crashsight/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    check-cast p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    .line 96
    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->e()I

    move-result v0

    .line 98
    iget-object v1, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    sget-object p3, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull$1;->a:[I

    iget-object v1, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    .line 212
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Type cannot be packed: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 213
    invoke-virtual {p2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :pswitch_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->m(Ljava/util/List;)V

    .line 196
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 198
    iget-object v2, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    .line 199
    invoke-virtual {v2}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {v0, v1, p5, p6}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(IILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_0

    .line 187
    :pswitch_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->q(Ljava/util/List;)V

    goto/16 :goto_1

    .line 180
    :pswitch_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->p(Ljava/util/List;)V

    goto :goto_1

    .line 173
    :pswitch_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->o(Ljava/util/List;)V

    goto :goto_1

    .line 166
    :pswitch_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->n(Ljava/util/List;)V

    goto :goto_1

    .line 159
    :pswitch_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->l(Ljava/util/List;)V

    goto :goto_1

    .line 152
    :pswitch_6
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->h(Ljava/util/List;)V

    goto :goto_1

    .line 145
    :pswitch_7
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->g(Ljava/util/List;)V

    goto :goto_1

    .line 138
    :pswitch_8
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->f(Ljava/util/List;)V

    goto :goto_1

    .line 131
    :pswitch_9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->e(Ljava/util/List;)V

    goto :goto_1

    .line 124
    :pswitch_a
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->c(Ljava/util/List;)V

    goto :goto_1

    .line 117
    :pswitch_b
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->d(Ljava/util/List;)V

    goto :goto_1

    .line 110
    :pswitch_c
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/util/List;)V

    goto :goto_1

    .line 103
    :pswitch_d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p1, p3}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/util/List;)V

    :goto_1
    move-object p1, p3

    .line 215
    :cond_1
    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p4, p2, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 219
    :cond_2
    iget-object v1, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v1

    sget-object v2, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->n:Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    if-ne v1, v2, :cond_3

    .line 220
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->i()I

    move-result p1

    .line 221
    iget-object p3, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p3}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->x()Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/uqm/crashsight/protobuf/Descriptors$EnumDescriptor;->b(I)Lcom/uqm/crashsight/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object p3

    if-nez p3, :cond_4

    .line 223
    invoke-static {v0, p1, p5, p6}, Lcom/uqm/crashsight/protobuf/SchemaUtil;->a(IILjava/lang/Object;Lcom/uqm/crashsight/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 228
    :cond_3
    sget-object p6, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull$1;->a:[I

    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v0

    aget p6, p6, v0

    packed-switch p6, :pswitch_data_1

    const/4 p3, 0x0

    goto/16 :goto_2

    .line 280
    :pswitch_e
    iget-object p6, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-interface {p1, p6, p3}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_2

    .line 276
    :pswitch_f
    iget-object p6, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-interface {p1, p6, p3}, Lcom/uqm/crashsight/protobuf/Reader;->b(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p3

    goto/16 :goto_2

    .line 273
    :pswitch_10
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->m()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    .line 254
    :pswitch_11
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p3

    goto/16 :goto_2

    .line 284
    :pswitch_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shouldn\'t reach here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :pswitch_13
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto/16 :goto_2

    .line 266
    :pswitch_14
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    .line 263
    :pswitch_15
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_2

    .line 260
    :pswitch_16
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->r()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    .line 257
    :pswitch_17
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    .line 251
    :pswitch_18
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_2

    .line 248
    :pswitch_19
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->k()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    .line 245
    :pswitch_1a
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_2

    .line 242
    :pswitch_1b
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_2

    .line 239
    :pswitch_1c
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_2

    .line 236
    :pswitch_1d
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_2

    .line 233
    :pswitch_1e
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->f()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    goto :goto_2

    .line 230
    :pswitch_1f
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->e()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    .line 287
    :cond_4
    :goto_2
    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 288
    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p4, p1, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_4

    .line 290
    :cond_5
    sget-object p1, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull$1;->a:[I

    iget-object p6, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p6}, Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;->i()Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;

    move-result-object p6

    invoke-virtual {p6}, Lcom/uqm/crashsight/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p6

    aget p1, p1, p6

    const/16 p6, 0x11

    if-eq p1, p6, :cond_6

    const/16 p6, 0x12

    if-eq p1, p6, :cond_6

    goto :goto_3

    .line 293
    :cond_6
    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p4, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->b(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 295
    invoke-static {p1, p3}, Lcom/uqm/crashsight/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 301
    :cond_7
    :goto_3
    iget-object p1, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p4, p1, p3}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    :goto_4
    return-object p5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method final a(Lcom/uqm/crashsight/protobuf/ByteString;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    check-cast p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    .line 531
    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message;->newBuilderForType()Lcom/uqm/crashsight/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/uqm/crashsight/protobuf/Message$Builder;->buildPartial()Lcom/uqm/crashsight/protobuf/Message;

    move-result-object v0

    .line 533
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/ByteString;->d()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/uqm/crashsight/protobuf/BinaryReader;->a(Ljava/nio/ByteBuffer;Z)Lcom/uqm/crashsight/protobuf/BinaryReader;

    move-result-object p1

    .line 535
    invoke-static {}, Lcom/uqm/crashsight/protobuf/Protobuf;->a()Lcom/uqm/crashsight/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p3}, Lcom/uqm/crashsight/protobuf/Protobuf;->a(Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/Reader;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)V

    .line 536
    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p4, p2, v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 538
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->b()I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-static {}, Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;->g()Lcom/uqm/crashsight/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 542
    :cond_1
    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v1, Lcom/uqm/crashsight/protobuf/LazyField;

    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    invoke-direct {v1, p2, p3, p1}, Lcom/uqm/crashsight/protobuf/LazyField;-><init>(Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/ByteString;)V

    invoke-virtual {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/uqm/crashsight/protobuf/Reader;Ljava/lang/Object;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/FieldSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uqm/crashsight/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    check-cast p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;

    .line 512
    invoke-static {}, Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    .line 514
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0, p3}, Lcom/uqm/crashsight/protobuf/Reader;->a(Ljava/lang/Class;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    .line 515
    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p4, p2, p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void

    .line 517
    :cond_0
    iget-object v0, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->a:Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;

    new-instance v1, Lcom/uqm/crashsight/protobuf/LazyField;

    iget-object p2, p2, Lcom/uqm/crashsight/protobuf/ExtensionRegistry$ExtensionInfo;->b:Lcom/uqm/crashsight/protobuf/Message;

    .line 519
    invoke-interface {p1}, Lcom/uqm/crashsight/protobuf/Reader;->o()Lcom/uqm/crashsight/protobuf/ByteString;

    move-result-object p1

    invoke-direct {v1, p2, p3, p1}, Lcom/uqm/crashsight/protobuf/LazyField;-><init>(Lcom/uqm/crashsight/protobuf/MessageLite;Lcom/uqm/crashsight/protobuf/ExtensionRegistryLite;Lcom/uqm/crashsight/protobuf/ByteString;)V

    .line 517
    invoke-virtual {p4, v0, v1}, Lcom/uqm/crashsight/protobuf/FieldSet;->a(Lcom/uqm/crashsight/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/uqm/crashsight/protobuf/MessageLite;)Z
    .locals 0

    .line 58
    instance-of p1, p1, Lcom/uqm/crashsight/protobuf/GeneratedMessageV3$ExtendableMessage;

    return p1
.end method

.method final b(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/uqm/crashsight/protobuf/FieldSet<",
            "Lcom/uqm/crashsight/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/uqm/crashsight/protobuf/FieldSet;->g()Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object v0

    .line 1068
    sget-wide v1, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull;->a:J

    invoke-static {p1, v1, v2, v0}, Lcom/uqm/crashsight/protobuf/UnsafeUtil;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method final c(Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/uqm/crashsight/protobuf/ExtensionSchemaFull;->a(Ljava/lang/Object;)Lcom/uqm/crashsight/protobuf/FieldSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uqm/crashsight/protobuf/FieldSet;->e()V

    return-void
.end method
